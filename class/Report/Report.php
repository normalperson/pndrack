<?php
require_once(dirname(__FILE__).'/../../init.inc.php');
require(DOC_DIR.'/inc/pndFunction.php');

class Report{
	function __construct(){
		
	}
	function index(){
		$curdir = dirname(__FILE__);

		if(!isset($_GET['webf']) || empty($_GET['webf'])) return;
		$func = $_GET['webf'];
		if(file_exists($curdir.DS.$func.'.php')){
			include($curdir.DS.$func.'.php');
		}else{
			html_header();
			// echo '<!-- function not found -->';
		}
	}
	function rptaging(){
		global $HTML,$DB;
		
		html_header();
		$dbo = dbo_include('rpt_aging');
	}
	
}

?>