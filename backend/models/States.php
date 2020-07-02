<?php
namespace backend\models;

/**
 * Class States
 * @package backend\models
 */
class States extends \common\models\States
{
	public static function getName($id)
	{
		$model = self::findOne(['id' => $id]);
		return ($model == null ? '-' : $model->name);
	}
}
