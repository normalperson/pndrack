<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'platelist.conf.php');

# customization
function platelist_customize(&$dbo){
}


# final rendering
$dbo->render();
?>