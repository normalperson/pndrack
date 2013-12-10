<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['d_id']->caption->set('default', 'd_id', 'text');
$dbo->cols['d_name']->caption->set('default', 'Name', 'text');
$dbo->cols['d_gender']->caption->set('default', 'Gender', 'text');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';

?>