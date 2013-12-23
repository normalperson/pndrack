<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'rpt_aging.conf.php');

# customization
function dbo_rpt_aging_customize(&$dbo){
}


# final rendering
$dbo->render();
?>