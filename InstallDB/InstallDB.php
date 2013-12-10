<?php
define('ANONYMOUS', true); // define do not require login
require_once(dirname(__FILE__).'/../init.inc.php');

class InstallDB{
	function __construct(){
		global $HTML, $GLOBAL, $DB, $USER;
		
	}
	function initSmarty(){
		$smarty = new Smarty();
		$smarty->caching = false;
		// $smarty->debugging = true;
		$smarty->setTemplateDir(DOC_DIR.DS.'smarty'.DS.'templates');
		$smarty->setCompileDir(DOC_DIR.DS.'smarty'.DS.'templates_c');
		$smarty->setCacheDir(DOC_DIR.DS.'smarty'.DS.'cache');
		$smarty->setConfigDir(DOC_DIR.DS.'smarty'.DS.'configs');	

		return $smarty;
	}
	function setup(){

		$smarty = $this->initSmarty();

		html_header('header.nh.html');
		$smarty->display('installDB.html');

	}

	
}

$InstallDB = new InstallDB();
$InstallDB->setup();
?>