<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_shelfgroup.conf.php');

# customization
function setup_shelfgroup_customize(&$dbo){
}


# final rendering
$dbo->render();
?>