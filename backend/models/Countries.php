<?php
namespace backend\models;

/**
 * Class Countries
 * @package backend\models
 */
class Countries extends \common\models\Countries
{
	public static function getName($id)
	{
		$model = self::findOne(['id' => $id]);
		return ($model == null ? '-' : $model->name);
	}
}
