<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'platelist.conf.php');

# customization
function platelist_customize(&$dbo){
}
global $USER;

$dbo->whereSQL = "sp_orgid = '".$USER->orgid."'";
$dbo->cols['sf_id']->option->default = 'select sf_id,sf_desc from smshelfsetting where sf_orgid = '.$USER->orgid.' order by sf_seq';


# final rendering
$dbo->render();
?>