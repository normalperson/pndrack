<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['op_id']->caption->set('default', 'op_id', 'text');
$dbo->cols['op_orgid']->caption->set('default', 'op_orgid', 'text');
$dbo->cols['op_packageid']->caption->set('default', 'op_packageid', 'text');
$dbo->cols['op_created']->caption->set('default', 'op_created', 'text');
$dbo->cols['op_createby']->caption->set('default', 'op_createby', 'text');
$dbo->cols['op_status']->caption->set('default', 'op_status', 'text');
$dbo->cols['op_startdate']->caption->set('default', 'op_startdate', 'text');
$dbo->cols['op_enddate']->caption->set('default', 'op_enddate', 'text');

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