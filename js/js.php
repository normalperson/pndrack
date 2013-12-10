<?php
ob_start();
define('ANONYMOUS', 1);
require_once('../init.inc.php');
$expires= 60 * 60 * 24;
ob_end_clean();
header('Pragma: public');
header('Cache-Control: max-age=' . $expires);
header("Expires: ".date('D, d M Y H:i:s', time() + $expires) . ' GMT');
header("Content-type: application/x-javascript");
if(!empty($_GET['c'])){
	$class = basename($_GET['c']);	
	$filename = !empty($_GET['js'])?basename($_GET['js']):$class;
	$filePath = CLASS_DIR.DS.$class.DS.'js'.DS.$filename;
	if(file_exists($filePath)) include($filePath);
	if(file_exists($filePath.'.js')) include($filePath.'.js');
	if(file_exists($filePath.'.php')) include($filePath.'.php');
}
?>