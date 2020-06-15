<?php

namespace backend\controllers;

use Yii;
use backend\models\Role;
use backend\models\RoleSearch;
use common\components\CController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\helpers\AccessRules;

/**
 * Class RoleController
 * @package backend\controllers
 *
 * @AdminModule(true)
 */
class RoleController extends CController
{
    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     *
     * @Title("List")
     */
    public function actionIndex()
    {
        $searchModel = new RoleSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     *
     * @Title("Create")
     */
    public function actionCreate()
    {
        $model = new Role();
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        } else {
            return $this->render('create', [
                'model' => $model,
                'ruleList' => $this->getRoles(),
            ]);
        }
    }

    /**
     * @return array
     * @throws \yii\base\InvalidParamException
     *
     * @Title("Update")
     */
    public function actionUpdate($id)
    {
        $Request = Yii::$app->request->post();
        /*print_r($Request); die;*/
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save(false)) {
 
            return $this->redirect(['index']);
        } else {
            return $this->render('update', [
                'model' => $model,
                'ruleList' => $this->getRoles(),
            ]);
        }
    }


    /**
     * @return array
     */
    public function getRoles()
    {
        $rules = (array)AccessRules::getRulesIndex()['methods'];
        $ruleList = [];

        foreach ($rules as $module) {

            $item = [
                'id' => $module['slug'],
                'text' => $module['title'],
                'children' => [],
                'state' => [
                    'opened' => true,
                ]
            ];

            foreach ((array)$module['methods'] as $method) {
                $item['children'][] = [
                    'text' => $method['title'],
                    'id' => $method['slug'],
                    'state' => [
                        // 'selected' => 0
                    ]
                ];
            }
            $ruleList[] = $item;


        }
        
        return $ruleList;
    }


    /**
     * Finds the Role model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Role the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (
            ($model = Role::find()->where([
                                            'or',
                                            ['role_key' => $id],
                                            ['role_name' => $id]
                                        ])
                                        ->one()) !== null
            ) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    /**
     * Deletes an existing Role model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     *
     * @Title("Delete")
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * @throws \yii\base\InvalidParamException
     * @throws \yii\base\Exception
     *
     * @Title("role status")
     */
    public function actionChangeStatus()
    {
        $params = ['id', 'status'];
        $post = Yii::$app->getRequest()->post();
        $result = ['status' => STATUS_FAIL, 'msg' => ''];
        foreach ($params as $param) {
            if (!array_key_exists($param, $post)) {
                $result['msg'] = Yii::t('backend', 'Required param missing');
                goto skip;
            }
        }
        $model = Role::findOne(['role_key' => $post['id']]);
        if ($model === null) {
            $result['msg'] = Yii::t('backend', 'Unable to find the requested Role');
            goto skip;
        }
        $model->role_status = $post['status'];
        $model->save(false);

        $result['msg'] = Yii::t('backend', 'Role deactivated successfully');
        if ((int)$model->role_status === $model::ACTIVE) {
            $result['msg'] = Yii::t('backend', 'Role activated successfully');
        }

        $result['status'] = STATUS_SUCCESS;

        skip:
        return $this->asJson($result);
    }
}
