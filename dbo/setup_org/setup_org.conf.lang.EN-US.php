<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['org_id']->caption->set('default', 'org_id', 'text');
$dbo->cols['org_code']->caption->set('default', 'Org Code', 'text');
$dbo->cols['org_name']->caption->set('default', 'Org Name', 'text');
$dbo->cols['org_parentid']->caption->set('default', 'Parent', 'text');
$dbo->cols['org_primaryid']->caption->set('default', 'org_primaryid', 'text');
$dbo->cols['org_address']->caption->set('default', 'Address', 'text');
$dbo->cols['org_contactno']->caption->set('default', 'Contact No', 'text');
$dbo->cols['org_status']->caption->set('default', 'Status', 'text');

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
$dbo->text->newSubmit = 'Save';
$dbo->text->detailCancel = 'Back';

?>