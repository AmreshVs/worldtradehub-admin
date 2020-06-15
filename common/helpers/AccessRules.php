<?php

namespace common\helpers;

use Addendum\Annotation;
use Addendum\ReflectionAnnotatedClass;
use Addendum\ReflectionAnnotatedMethod;
use common\models\AdminUser;
use Yii;
use yii\base\Exception;
use yii\helpers\ArrayHelper;
use yii\helpers\Inflector;
use yii\helpers\Json;

/**
 * This Summary block
 *
 * Class AccessRules
 * @package common\helpers
 *
 * @author yii2
 */
class AccessRules
{

    const ADMIN_MODULE = 'AdminModule';

    /**
     * @var array list of to exclude while performing [[AccessRules::check()]]
     */
    private static $whiteList = ['login/logout', 'user/availability-status'];

    /**
     * Returns the array of access rule's.
     *
     * Method will return array of access rule's available for the given $app and filter the
     * module based on the $moduleFilter. by default working applications rules will be returned without
     * filtering
     *
     * @param null|string $app
     * @param array $moduleFilter
     * @return array
     * @throws \ReflectionException
     * @throws \yii\base\Exception
     * @throws \yii\base\InvalidParamException
     */
    public static function getRulesIndex($app = null, array $moduleFilter = [])
    {
        if ($app === null) {
            $app = 'app';
        }
        if (0 !== strpos($app, '@')) {
            $app = "@$app";
        }
        $controllers = $controllerMethods = [];

        # for including modules in the List of Controllers
        $modules = [
            'delivery'
        ];
        $directories[] = Yii::getAlias("$app/controllers/*Controller.php");

        foreach ($modules as $module) {
            $module = explode(DIRECTORY_SEPARATOR, $module)[0];
            $directories[] = Yii::getAlias("$app/modules/{$module}/controllers/*Controller.php");
        }

        $namespace = self::getNamespace($app) . '\controllers';

        foreach (self::listAllFiles($directories) as $controller) {
            $class = basename($controller, '.php');

            if (strpos($controller, 'modules') !== false) {
                $module = explode('modules/', $controller)[1];
                $module = explode(DIRECTORY_SEPARATOR, $module)[0];
                $controllerSlug = str_replace('Controller', '', "$module/" . lcfirst($class));

                $module = explode('/', str_ireplace(Yii::getAlias($app) . '/modules/', '', $controller));
                if (ArrayHelper::keyExists(0, $module)) {
                    $module = $module[0];
                } else {
                    $module = '';
                }
                $namespace = self::getNamespace($app);
                $class = "modules\\$module\\controllers\\$class";
            } else {
                $controllerSlug = str_replace('Controller', '', lcfirst($class));
            }

            $controllers[] = $controllerSlug;

            $class = "$namespace\\$class";

            $reflection = new ReflectionAnnotatedClass($class);

            /**
             * Skip Admin Modules from Access Rules!
             */
            if ($reflection->hasAnnotation('AdminModule')) {
                continue;
            }

            $classTitle = $controllerSlug;
            if ($reflection->hasAnnotation('Title')) {
                $classTitle = $reflection->getAnnotation('Title')->value;
            }

            $reflection = new \ReflectionClass($class);

            $methods = $reflection->getMethods();

            foreach ($methods as $method) {
                if ($method->class !== $class) {
                    # Skip if the method/function is from extended class
                    continue;
                }
                if (strpos($method->name, 'action') === false || strpos($method->name, 'action') !== 0) {
                    # Skip if the method/function is not actions
                    continue;
                }
                $reflection = new ReflectionAnnotatedMethod($class, $method->name);

                if ($moduleFilter !== [] && !$reflection->hasAnnotation('backendModule')) {
                    $excludeAnnotation = true;

                    foreach ($moduleFilter as $filter) {
                        if ($reflection->hasAnnotation($filter)) {
                            $excludeAnnotation = false;
                            break;
                        }
                    }
                    if ($excludeAnnotation) {
                        continue;
                    }
                }

                if ($reflection->hasAnnotation('Title') === false) {
                    # Skip the action if annotation is not present
                    continue;
                }

                $methodTitle = $reflection->getAnnotation('Title')->value;
                $methodSlug = str_replace('action', '', $method->name);

                $controllerSlug = Inflector::camel2id($controllerSlug);
                $methodSlug = Inflector::camel2id($methodSlug);

                if (!array_key_exists($controllerSlug, $controllerMethods)) {
                    $controllerMethods[$controllerSlug] = [
                        'title' => $classTitle,
                        'slug' => $controllerSlug,
                        'methods' => []
                    ];
                }
                $controllerMethods[$controllerSlug]['methods'][] = [
                    'title' => $methodTitle,
                    'slug' => "$controllerSlug/$methodSlug"
                ];
            }
        }

        return [
            'controllers' => $controllers,
            'methods' => $controllerMethods
        ];
    }

    /**
     * Returns array of files path for given $directories.
     *
     * @param array $directories
     * @return array
     */
    public static function listAllFiles(array $directories)
    {
        $files = [];
        foreach ($directories as $dir) {
            foreach (glob($dir) as $file) {
                $files[] = $file;
            }
        }
        return $files;
    }

    /**
     * Checks the accessibility
     *
     * @param null $actionId
     * @param bool $noRecursive
     * @return bool
     * @throws Exception
     * @throws \ReflectionException
     * @throws \Throwable
     */
    public static function check($actionId = null, $noRecursive = false)
    {

        if ($actionId === null) {
            $actionId = Yii::$app->controller->action->getUniqueId();
        }

        /**
         * Allowing white listed modules
         */
        if (in_array($actionId, self::$whiteList, true)) {
            return true;
        }

        list($controllerId, $actionId) = array_values(Com::parseUrl($actionId));

        $user = Yii::$app->getUser();
        if ($user->getIsGuest()) {
            return false;
        }
        /* @var $userIdentity User */
        $userIdentity = $user->getIdentity();
        /**
         * Allow access to owners
         */

        if ($userIdentity->user_type === AdminUser::USER_TYPE_SUPER_ADMIN) {
            return true;
        }
        if (Com::isSession(ACCESS_RULE)) {
            $rules = Com::session(ACCESS_RULE);
            if (($rules = Json::decode($rules)) === null) {
                $rules = [];
            }
        } else {
            return false;
        }

        $action = self::format($actionId);
        $controller = self::format($controllerId);
        $module = null;
        if (substr_count($controller, '/') + 1 > 1) {
            $controller = explode('/', $controller);
            $module = lcfirst($controller[0]);
            $controller = ucfirst($controller[1]);
        }
        $controller = sprintf('%sController', lcfirst($controller));
        $class = ucfirst($controller);

        $method = sprintf('action%s', $action);
        if ($module !== null && trim($module) !== '') {
            $namespace = sprintf('%s\modules\%s\controllers', self::getNamespace('@app'), $module);
        } else {
            $namespace = sprintf('%s\controllers', self::getNamespace('@app'));
        }


        /**
         * Block Access to "Admin Modules"
         * if current login user type is not Super Admin
         */
        try {
            $reflection = new ReflectionAnnotatedClass("$namespace\\$class");
        } catch (\Exception $exception) {
            echo "$namespace\\$class";
            die('Please contact your administrator' . $exception->getMessage());
        }

        $partialModule = false;
        if (
            (int)$userIdentity->user_type !== AdminUser::USER_TYPE_SUPER_ADMIN &&
            $reflection->hasAnnotation('AdminModule')
        ) {
            if ( $reflection->getAnnotation('AdminModule')->value !== 'partial') {
                return false;
            }
            $partialModule = true;
        }

        /**
         * Now checking cached rules
         */
        if (($index = array_search("$controllerId/$actionId", ArrayHelper::getColumn($rules, 'id'), true)) !== false) {
            $rules = $rules[$index];
            return (int)$rules['state'] === 1;
        }

        if ($noRecursive && !$partialModule) {
            return false;
        }

        if (!$reflection->hasMethod($method)) {
            # Allow errors in Yii style!
            return true;
        }
        $reflection = new ReflectionAnnotatedMethod("$namespace\\$class", $method);
        if ($partialModule) {
            return $reflection->hasAnnotation('DefaultActionModule');
        }

        if ($reflection->hasAnnotation('AdminModuleAction')) {
            return false;
        }
        if ($reflection->hasAnnotation('Assoc')) {
            // $assocAction = $reflection->getAnnotation('Assoc')->value;
            // $assocAction = str_replace('action', '', $assocAction);

            // $assocAction = sprintf('%s/%s', str_replace('Controller', '', $controller), $assocAction);

            // return self::check($assocAction, true);
            $assocAction = $reflection->getAnnotation('Assoc')->value;
            $assocAction = str_replace('action', '', $assocAction);
            $assocAction = Inflector::camel2id($assocAction);

            $assocAction = sprintf('%s/%s', str_replace('Controller', '', $controller), $assocAction);
            # return self::Check($controller, $assocAction, true);
        } else {
            if (!$reflection->hasAnnotation('Title')) {
                /**
                 * ALLOW method with out @Assoc and @Title value...
                 * Since it does not required to apply rules! is not secured!
                 */
                return true;
            }
        }

        return false;
    }

    /**
     * @param $id
     * @return mixed
     */
    private static function format($id)
    {
        return str_replace(' ', '', ucwords(implode(' ', explode('-', $id))));
    }

    /**
     * @param $app
     * @return mixed|string
     * @throws \yii\base\InvalidParamException
     * @throws Exception
     */
    private static function getNamespace($app)
    {
        /**
         * Getting the namespace of annotation performing app, because \ReflectionClass require
         * namespace'd class
         */
        if (($namespace = array_search(Yii::getAlias($app), Yii::$aliases, true)) === false) {
            throw new Exception('Unable to find the request app annotations');
        }

        if (0 === strpos($namespace, '@')) {
            $namespace = substr($namespace, 1);
        }
        return $namespace;
    }
}

/**
 * Class AdminModule
 * @package backend\helpers
 * @ignore
 */
class AdminModule extends Annotation
{
}

/**
 * Class DefaultActionModule
 * @package common\helpers
 * @ignore
 */
class DefaultActionModule extends Annotation
{
}

/**
 * Class AdminModuleAction
 * @package backend\helpers
 * @ignore
 */
class AdminModuleAction extends Annotation
{

}


/**
 * Class Title
 * @package backend\helpers
 * @ignore
 */
class Title extends Annotation
{

}

/**
 * Class Assoc
 * @package backend\helpers
 * @ignore
 */
class Assoc extends Annotation
{

}