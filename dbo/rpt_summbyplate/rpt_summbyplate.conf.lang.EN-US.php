<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['totalqty']->caption->set('default', 'Total Print Quantity', 'text');
$dbo->cols['totalprint']->caption->set('default', 'Count', 'text');
$dbo->cols['sp_platename']->caption->set('default', 'Plate Name', 'text');
$dbo->cols['sp_orgid']->caption->set('default', 'sp_orgid', 'text');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';
$dbo->text->searchCancel = 'Cancel';
$dbo->text->searchSubmit = 'Search';
$dbo->text->editCancel = 'Cancel';
$dbo->text->editSubmit = 'Save';
$dbo->text->newCancel = 'Cancel';
$dbo->text->newSubmit = 'Save';
$dbo->text->listNewEditSubmit = 'Save';
$dbo->text->detailCancel = 'Back';

?>