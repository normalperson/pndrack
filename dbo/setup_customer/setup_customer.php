<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_customer.conf.php');
require(DOC_DIR.'/inc/pndFunction.php');
vd(userTopOrgID());

# customization
function setup_customer_customize(&$dbo){
}


# final rendering
$dbo->render();
?>