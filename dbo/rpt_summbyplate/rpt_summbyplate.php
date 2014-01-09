<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'rpt_summbyplate.conf.php');

# customization
function dbo_rpt_summbyplate_customize(&$dbo){
}


# final rendering
$dbo->render();
?>