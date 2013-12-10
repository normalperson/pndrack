<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_customer.conf.php');

# customization
function setup_customer_customize(&$dbo){
}


# final rendering
$dbo->render();
?>