<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['op_id']->caption->set('default', 'op_id', 'text');
$dbo->cols['op_orgid']->caption->set('default', 'Client', 'text');
$dbo->cols['op_packageid']->caption->set('default', 'Package ID', 'text');
$dbo->cols['op_created']->caption->set('default', 'Created Date', 'text');
$dbo->cols['op_createby']->caption->set('default', 'Created By', 'text');
$dbo->cols['op_status']->caption->set('default', 'Status', 'text');
$dbo->cols['op_startdate']->caption->set('default', 'Start Date', 'text');
$dbo->cols['op_enddate']->caption->set('default', 'End Date', 'text');
$dbo->cols['months']->caption->set('default', 'Month(s)', 'text');
$dbo->cols['op_enddateori']->caption->set('default', 'op_enddateori', 'text');
$dbo->cols['op_previd']->caption->set('default', 'op_previd', 'text');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';
$dbo->text->searchCancel = 'Cancel';
$dbo->text->searchSubmit = 'Search';
$dbo->text->editCancel = 'Cancel';
$dbo->text->editSubmit = 'Edit';
$dbo->text->newCancel = 'Cancel';
$dbo->text->newSubmit = 'Submit';
$dbo->text->detailCancel = 'Back';

?>