<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['sb_id']->caption->set('default', 'sb_id', 'text');
$dbo->cols['sb_cusid']->caption->set('default', 'Customer Name', 'text');
$dbo->cols['sb_slfid']->caption->set('default', 'Shelf', 'text');
$dbo->cols['sb_parentid']->caption->set('default', 'sb_parentid', 'text');
$dbo->cols['sb_barcode']->caption->set('default', 'Barcode', 'text');
$dbo->cols['sb_createddate']->caption->set('default', 'Created Date', 'text');
$dbo->cols['sb_sgid']->caption->set('default', 'Shelf Group', 'text');

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
$dbo->text->detailCancel = 'Back';

?>