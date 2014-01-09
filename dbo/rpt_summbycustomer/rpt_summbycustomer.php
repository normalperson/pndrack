<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'rpt_summbycustomer.conf.php');

# customization
function dbo_rpt_summbycustomer_customize(&$dbo){
}


# final rendering
$dbo->render();
?>