<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['sp_id']->caption->set('default', 'sp_id', 'text');
$dbo->cols['cus_masterid']->caption->set('default', 'Master ID', 'text');
$dbo->cols['cus_name']->caption->set('default', 'Customer Name', 'text');
$dbo->cols['sp_platename']->caption->set('default', 'Plate Name', 'text');
$dbo->cols['sp_platemodel']->caption->set('default', 'Plate Model', 'text');
$dbo->cols['ps_code']->caption->set('default', 'Barcode', 'text');
$dbo->cols['sf_id']->caption->set('default', 'sf_id', 'text');
$dbo->cols['sp_orgid']->caption->set('default', 'sp_orgid', 'text');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';

?>