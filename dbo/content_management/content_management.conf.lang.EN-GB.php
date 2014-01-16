<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['ct_id']->caption->set('default', 'ct_id', 'text');
$dbo->cols['ct_type']->caption->set('default', 'Type', 'text');
$dbo->cols['ct_title']->caption->set('default', 'Title', 'text');
$dbo->cols['ct_content']->caption->set('default', 'Content', 'text');
$dbo->cols['ct_created_date']->caption->set('default', 'Created Date', 'text');
$dbo->cols['ct_created_by']->caption->set('default', 'Created By', 'text');
$dbo->cols['ct_last_modified_date']->caption->set('default', 'Modified Date', 'text');
$dbo->cols['ct_last_modified_by']->caption->set('default', 'Modified By', 'text');
$dbo->cols['ct_status']->caption->set('default', 'Status', 'text');
$dbo->cols['ct_last_status_date']->caption->set('default', 'Status Date', 'text');
$dbo->cols['ct_approval_status']->caption->set('default', 'Approval Status', 'text');
$dbo->cols['ct_approval_date']->caption->set('default', 'Approval Date', 'text');
$dbo->cols['ct_approval_by']->caption->set('default', 'Approval By', 'text');

$dbo->titleList = 'Content Management';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Post';
$dbo->titleEdit = 'Edit Post';
$dbo->titleSearch = 'Search Post';
$dbo->text->searchCancel = 'Cancel';
$dbo->text->searchSubmit = 'Search';
$dbo->text->editCancel = 'Cancel';
$dbo->text->editSubmit = 'Save';
$dbo->text->newCancel = 'Cancel';
$dbo->text->newSubmit = 'Save';
$dbo->text->detailCancel = 'Back';

?>