<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['totalqty']->caption->set('default', 'totalqty', 'text');
$dbo->cols['totalprint']->caption->set('default', 'totalprint', 'text');
$dbo->cols['sp_platename']->caption->set('default', 'sp_platename', 'text');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';

?>