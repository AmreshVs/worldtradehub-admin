<?php
namespace backend\models;

/**
 * Class States
 * @package backend\models
 */
class States extends \common\models\States
{
	public function getName($id)
	{
		$model = self::findOne(['id' => $id]);
		return ($model == null ? '-' : $model->name);
	}
}
