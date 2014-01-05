<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'plate_multiedit.conf.php');

# customization
function dbo_plate_multiedit_customize(&$dbo){
}
global $USER;

$dbo->whereSQL = "sp_orgid = '".$USER->orgid."'";

# final rendering
$dbo->render();
?>