<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'demo_customerdata.conf.php');

# customization
function dbo_demo_customerdata_customize(&$dbo){
}


# final rendering
$dbo->render();
?>