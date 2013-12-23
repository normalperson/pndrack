<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'platelist.conf.php');

# customization
function platelist_customize(&$dbo){
}
global $USER;

$dbo->whereSQL = "sp_orgid = '".$USER->orgid."'";

# final rendering
$dbo->render();
?>