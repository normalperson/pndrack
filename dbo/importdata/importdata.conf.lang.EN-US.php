<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['ip_id']->caption->set('default', 'ip_id', 'text');
$dbo->cols['ip_custname']->caption->set('default', 'Customer name', 'text');
$dbo->cols['ip_custmasterid']->caption->set('default', 'Customer masterID', 'text');
$dbo->cols['ip_custregno']->caption->set('default', 'Customer registration number', 'text');
$dbo->cols['ip_custcontactno']->caption->set('default', 'Customer contact number', 'text');
$dbo->cols['ip_platename']->caption->set('default', 'Plate name', 'text');
$dbo->cols['ip_platemodel']->caption->set('default', 'Plate model', 'text');
$dbo->cols['ip_plateinfo']->caption->set('default', 'Plate info', 'text');
$dbo->cols['ip_orgid']->caption->set('default', 'ip_orgid', 'text');
$dbo->cols['ip_status']->caption->set('default', 'Status', 'text');
$dbo->cols['ip_remark']->caption->set('default', 'Info', 'text');

$dbo->titleList = 'Import remark';
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
$dbo->text->detailCancel = 'Back';
$dbo->text->detailDelete = 'Delete';
$dbo->text->defaultMessageAfterNew = 'Record created.';
$dbo->text->defaultMessageAfterEdit = 'Record updated.';
$dbo->text->defaultMessageAfterDelete = 'Record deleted.';

?>