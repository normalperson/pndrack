<?php
global $GLOBAL, $DB;
if(isset($_GET['load'])){
	$GLOBAL['dboload'] = $_GET['load'];
}
if(!empty($GLOBAL['dboload']) && file_exists(DOC_DIR.DS.'dbo'.DS.$GLOBAL['dboload'].DS.$GLOBAL['dboload'].'.php')){
	html_header();
	include(DOC_DIR.DS.'dbo'.DS.$GLOBAL['dboload'].DS.$GLOBAL['dboload'].'.php');
	vd($dbo->state);
}else{
	echo DOC_DIR.DS.'dbo'.DS.$GLOBAL['dboload'].DS.$GLOBAL['dboload'].'.php not exists';
}
?>