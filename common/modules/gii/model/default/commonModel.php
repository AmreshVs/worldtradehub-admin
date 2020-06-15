<?php
echo "<?php\n";
$extends = "Base$className";
?>
namespace <?= $ns ?>;

use common\models\base\<?= $extends ?>;

/**
 * Class <?= "$className\n" ?>
 * @package <?= "$ns\n" ?>
 */
class <?= $className ?> extends <?= "$extends\n" ?>
{
}
