<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'samplemenu.conf.php');

# customization
function samplemenu_customize(&$dbo){
}


# final rendering
$dbo->render();
?>