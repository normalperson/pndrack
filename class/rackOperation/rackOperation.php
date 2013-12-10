<?php
require_once(dirname(__FILE__).'/../../init.inc.php');

class rackOperation{
	function __construct(){
		
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
	function checkinout(){
		global $HTML;

		$smarty = $this->initSmarty();
		html_header();
		$smarty->display('checkinout.html');

	}
	function stockcount(){
		global $HTML;

		$smarty = $this->initSmarty();
		html_header();

	}
	

	
}

?>