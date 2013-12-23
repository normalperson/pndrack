<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'plate_multiedit.conf.php');

# customization
function dbo_plate_multiedit_customize(&$dbo){
}


# final rendering
$dbo->render();
?>