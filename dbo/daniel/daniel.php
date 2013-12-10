<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'daniel.conf.php');

# customization
function daniel_customize(&$dbo){
}


# final rendering
$dbo->render();
?>