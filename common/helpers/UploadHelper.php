<?php

namespace common\helpers;

use common\models\Configuration;
use Yii;
use yii\base\Exception;
use yii\web\UploadedFile;

/**
 * Uploader is an File processing helper class used in the applications
 *
 * Class Uploader
 * @package common\helpers
 *
 * 
 */
class UploadHelper
{
    const TICKET = 'TICKET';
    const EVENT = 'EVENT';
    const SITE_IMAGES = 'SITE_IMAGES';
    
    
    const USER = 'user/profile';
    const USER_POST = 'user/post';
    /**
     * @var UploadHelper
     */
    private static $instance;
    /**
     * @var string
     */
    private $path;
    /**
     * @var string
     */
    private $basePath;
    /**
     * @var UploadedFile
     */
    private $uploadedFile;

    /**
     * UploadHelper constructor.
     * @throws \yii\base\InvalidParamException
     */
    private function __construct()
    {
        $this->basePath = Yii::getAlias('@uploads');
    }

    /**
     * @return UploadHelper
     * @throws \yii\base\InvalidParamException
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * @param $path
     * @param bool $realPath
     * @return string
     * @throws \yii\base\InvalidParamException
     */
    public function generateThumb($path, $realPath = true)
    {
        $image = file_get_contents($path);

        $imageAttr = getimagesizefromstring($image);
        $imageType = explode('/', $imageAttr['mime']);
        $imageType = $imageType[1];

        switch (1) {
            case 1: # Thumbnail
                $width = Configuration::get(Configuration::THUMBNAIL_WIDTH);
                if ($width === null || (int)$width === 0) {
                    $width = 145;
                }
                $height = ($width * $imageAttr[1]) / $imageAttr[0];
                break;
            case 2: # Medium
                $width = 210;
                $height = 200;
                break;
            case 3: # Large
//                [$width, $height] = $imageAttr;
                # $width  = $imageAttr[0];
                # $height = $imageAttr[1];
                break;
            default:
                $width = 145;
                $height = ($width * $imageAttr[1]) / $imageAttr[0];
                break;
        }
        $src = imagecreatefromstring($image);
        $dst = imagecreatetruecolor($width, $height);
        imagecopyresampled($dst, $src, 0, 0, 0, 0, $width, $height, $imageAttr[0], $imageAttr[1]);
        imagedestroy($src);


        $path = $this->getThumbName($path);

        switch ($imageType) {
            case 'png':
                imagepng($dst, $path);
                break;
            case 'jpg':
            case 'jpeg':
                imagejpeg($dst, $path);
                break;
            default:
                imagepng($dst, $path);
                break;

        }
        imagedestroy($dst);

        if ($realPath === true) {
            return $this->getRealPath($path);
        }
        return $path;
    }

    /**
     *
     * @param string $path
     * @param boolean $absPath
     * @return string
     */
    public function getThumbName($path, $absPath = true)
    {
        list($srcName, $ext) = explode('.', basename($path));
        $srcName .= "_thumb.$ext";

        if ($absPath === true) {
            return dirname($path) . DIRECTORY_SEPARATOR . $srcName;
        }

        return $srcName;
    }

    /**
     * @param $path
     * @return string
     * @throws \yii\base\InvalidParamException
     */
    public function getRealPath($path)
    {
        $path = ltrim(str_ireplace(Yii::getAlias('@approot'), '', $path), DIRECTORY_SEPARATOR);
        /**
         * @note: DIRECTORY_SEPARATOR is different for linux based system and windows so, replacing it
         *       with forward slashes for web accessible URL
         * @author yii2
         */
        return str_replace([DIRECTORY_SEPARATOR], '/', $path);
    }

    /**
     * @param string $path
     * @param array $option
     * @param bool $realPath
     * @return string
     * @throws \yii\base\InvalidParamException
     * @throws \yii\base\Exception
     *
     * @deprecated
     *
     * @author A Vijay<vijay.a@.com>
     */
    public function crop($path, array $option, $realPath = true)
    {
        $defaultOptions = ['height' => 100, 'width' => 100, 'x' => 0, 'y' => 0, 'path' => false, 'name' => time()];

        $option = array_merge($defaultOptions, $option);

        if (!file_exists($path)) {
            throw new Exception('Requested source not found !');
        }

        $image = file_get_contents($path);
        $imageAttr = getimagesizefromstring($image);
        $imageType = explode('/', $imageAttr['mime']);
        $imageType = $imageType[1];

        $src = imagecreatefromstring($image);
        $dst = imagecreatetruecolor($option['width'], $option['height']);

        /**
         * @link: https://www.sitepoint.com/community/t/gd-cropping-with-imagecopyresampled/2915/3
         */
        imagecopyresampled(
            $dst,
            $src,
            0,
            0,
            $option['x'],
            $option['y'],
            $option['width'],
            $option['height'],
            $option['width'],
            $option['height']
//            $imageAttr[0] - $cross * $option['x'],
//            $imageAttr[1] - $cross * $option['y']
        );

        imagedestroy($src);

        if ($option['path'] === false) {
            $option['path'] = dirname($path);
        }

        $path = rtrim($option['path'], DIRECTORY_SEPARATOR);
        $path = sprintf('%s%s%s.%s', $path, DIRECTORY_SEPARATOR, $option['name'], $imageType);

        switch ($imageType) {
            case 'png':
                imagepng($dst, $path);
                break;
            case 'jpg':
            case 'jpeg':
                imagejpeg($dst, $path);
                break;
            default:
                imagepng($dst, $path);
                break;

        }
        imagedestroy($dst);

        if ($realPath === true) {
            return $this->getRealPath($path);
        }
        return $path;
    }

    /**
     * @param bool $withFileName
     * @return string
     * @throws \yii\base\InvalidParamException
     * @throws \yii\base\Exception
     */
    public function getPath($withFileName = false)
    {
        $path = $this->path;
        if ($withFileName === true && $this->uploadedFile !== null) {

            $name = sprintf('%s%s', time(), Com::generateRandomString(5, true));

            if (isset($this->uploadedFile->extension)) {
                $name .= ".{$this->uploadedFile->extension}";
            }

            $path .= sprintf('%s%s', DIRECTORY_SEPARATOR, $name);
        }

        return $path;
    }

    /**
     * @param $path
     * @throws \yii\base\Exception
     */
    public function setPath($path)
    {
        $path = ltrim($path, DIRECTORY_SEPARATOR);
        $this->path = sprintf('%s%s%s', $this->basePath, DIRECTORY_SEPARATOR, $path);

        $this->createDirectoryIfNotExists($this->path);
    }

    /**
     * Method to create directory recursively
     * @param $path
     * @throws Exception
     */
    private function createDirectoryIfNotExists($path)
    {
        $stack = [];
        $localPath = $path;
        while (true) {
            # Checking whether the path exists
            if ($this->check($localPath)) {

                $this->initDirectoryIndex($localPath);

                /**
                 * Breaking the loop if given directory is exists
                 */
                if (count($stack) === 0) {
                    break;
                }
                /**
                 * After finding an existing directory creating the stacked directory to
                 * existing directory, So this loop will continue until the given paths
                 * valid / exists
                 */
                $localPath .= sprintf('%s%s', DIRECTORY_SEPARATOR, array_pop($stack));
                $this->initDirectory($localPath);
                continue;
            }
            /**
             * If path doest exists then pushing the current directory to stack
             * and will check current directories parent directory exist in loop
             *
             * This process will continue until given path existing
             */
            $stack[] = basename($localPath);
            $localPath = dirname($localPath);
        }
    }

    /**
     * @param $path
     * @param bool $isFile
     * @return bool
     */
    private function check($path, $isFile = false)
    {
        return file_exists($path) && ($isFile ? !is_dir($path) : true);
    }

    /**
     * @param $path
     */
    private function initDirectoryIndex($path)
    {
        $files = ['index.php' => '', '.htaccess' => 'Options -Indexes'];

        foreach ($files as $tmpPath => $content) {
            $tmpPath = sprintf('%s%s%s', $path, DIRECTORY_SEPARATOR, $tmpPath);
            if ($this->check($tmpPath)) {
                continue;
            }
            file_put_contents($tmpPath, $content);
        }
    }

    /**
     * @param $path
     * @throws Exception
     */
    private function initDirectory($path)
    {
        $oldUmask = umask(0); // disable umask
        if (!@mkdir($path, 0755) && !is_dir($path)) {
            umask($oldUmask); // reset the umask
            throw new Exception(sprintf('Permission denied on %s', $path));
        }
        umask($oldUmask); // reset the umask
        # To prevent directory listing
        $this->initDirectoryIndex($path);
    }

    /**
     * @param $pathArr
     */
    public function cleanByArray(array $pathArr)
    {
        foreach ($pathArr as $path) {
            $this->clean($path);
        }
    }

    /**
     * @param $path
     * @param bool $removeDir
     */
    public function clean($path, $removeDir = false)
    {
        $path = rtrim($path, DIRECTORY_SEPARATOR);
        if (!file_exists($path)) {
            return;
        }
        if (is_file($path)) {
            unlink($path);
        } else {
            $files = glob(sprintf('%s%s*', $path, DIRECTORY_SEPARATOR)); // get all file names

            foreach ($files as $file) { # Iterate files
                if (is_file($file) && !in_array(basename($file), ['.htaccess', 'index.php'], true)) {
                    unlink($file); # Delete file
                } else {
                    if ($removeDir === true && is_dir($file)) {
                        $this->clean($file, true);
                        rmdir($file);
                    }
                }
            }
        }
    }

    /**
     * @param $path
     * @param bool $host
     * @param string $type
     * @return string
     * @throws \yii\base\InvalidParamException
     */
    public function get($path, $host = true, $type = Com::PLACEHOLDER_DEFAULT)
    {
        $path = ltrim($path, DIRECTORY_SEPARATOR);

        $uploadRoot = basename(Yii::getAlias('@uploads'));
        $match = preg_quote($uploadRoot, DIRECTORY_SEPARATOR);
        $match = sprintf('/%s/', $match);

        if (preg_match($match, $path) === 0) {
            $path = $uploadRoot . DIRECTORY_SEPARATOR . $path;
        }
        if ($this->check($this->getAbsPath($path), true)) {
            $path = DIRECTORY_SEPARATOR . $path;
            if ($host === true) {
                $path = Com::absUploadPath($path);
            }
            return $path;
        }
        return Com::getImagePlaceholder(true, $type);
    }

    /**
     * @param string $path
     * @return string
     * @throws \yii\base\InvalidParamException
     */
    public function getAbsPath($path)
    {
        $path = ltrim($path, DIRECTORY_SEPARATOR);
        $appRoot = Yii::getAlias('@approot');

        $match = ltrim($appRoot, DIRECTORY_SEPARATOR);
        $match = preg_quote($match, DIRECTORY_SEPARATOR);
        $match = sprintf('/%s/', $match);

        if (preg_match($match, $path) !== 0) {
            return DIRECTORY_SEPARATOR . $path;
        }

        return $appRoot . DIRECTORY_SEPARATOR . $path;
    }

    /**
     * @param UploadedFile $uploadedFile
     */
    public function setUploadedFile(UploadedFile $uploadedFile)
    {
        $this->uploadedFile = $uploadedFile;
    }

    /**
     * @param array $pathArr
     * @return string
     */
    public function join(array $pathArr)
    {
        return implode(DIRECTORY_SEPARATOR, $pathArr);
    }

    /**
     * @param $sourceFilePath
     * @param $destinationFilePath
     * @return bool
     */
    public function move($sourceFilePath, $destinationFilePath)
    {
        $flag = $this->copy($sourceFilePath, $destinationFilePath);
        if ($flag) {
            $this->clean($sourceFilePath);
        }

        return $flag;
    }

    /**
     * @param $sourceFilePath
     * @param $destinationFilePath
     * @return bool
     */
    public function copy($sourceFilePath, $destinationFilePath)
    {
        return copy($sourceFilePath, $destinationFilePath);
    }
}