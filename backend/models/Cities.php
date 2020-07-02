<?php
namespace backend\models;

/**
 * Class Cities
 * @package backend\models
 */
class Cities extends \common\models\Cities
{
	public static function getName($id)
	{
		$model = self::findOne(['id' => $id]);
		return ($model == null ? '-' : $model->name);
	}
}
