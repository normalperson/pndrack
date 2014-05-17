<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'importdata.conf.php');

$smarty = new Smarty();
$smarty->caching = false;
// $smarty->debugging = true;
$smarty->setTemplateDir(DOC_DIR.DS.'smarty'.DS.'templates');
$smarty->setCompileDir(DOC_DIR.DS.'smarty'.DS.'templates_c');
$smarty->setCacheDir(DOC_DIR.DS.'smarty'.DS.'cache');
$smarty->setConfigDir(DOC_DIR.DS.'smarty'.DS.'configs');	
$smarty->display('importexcel.html');


# customization
function dbo_importdata_customize(&$dbo){
}


# final rendering
$dbo->render();
?>