<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'fonginput.conf.php');

# customization
function fonginput_customize(&$dbo){
}
foreach($dbo->cols as $col=>$obj){
	// d($col);
	$obj->isAlpha();
}

# final rendering
$dbo->render();
?>