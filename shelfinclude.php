<?php
require_once(dirname(__FILE__).'/init.inc.php');

global $HTML;

$HTML->showPageTime = false;
html_header('iframeheader.html');
#if(isset($_GET['shelfid']) && $_GET['shelfid'] !='') print 'shelfid = '.$_GET['shelfid'].'<br>'; 
dbo_include('shelf_input');


?>