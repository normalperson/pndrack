<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'packagesetup.conf.php');

# customization
function dbo_packagesetup_customize(&$dbo){
}


# final rendering
$dbo->render();
?>