<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['dm_id']->caption->set('default', 'dm_id', 'text');
$dbo->cols['dm_cusname']->caption->set('default', 'Customer Name', 'text');
$dbo->cols['dm_regno']->caption->set('default', 'Registration No', 'text');
$dbo->cols['dm_masterid']->caption->set('default', 'Master ID', 'text');
$dbo->cols['dm_contactno']->caption->set('default', 'Contact No', 'text');
$dbo->cols['dm_industry']->caption->set('default', 'Industry', 'text');

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