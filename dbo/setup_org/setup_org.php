<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_org.conf.php');

# customization
function setup_org_customize(&$dbo){
}


# final rendering
$dbo->render();
?>