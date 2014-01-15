<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['pk_id']->caption->set('default', 'pk_id', 'text');
$dbo->cols['pk_description']->caption->set('default', 'Description', 'text');
$dbo->cols['pk_price']->caption->set('default', 'Price', 'text');
$dbo->cols['pk_minplate']->caption->set('default', 'Min Plate', 'text');
$dbo->cols['pk_maxplate']->caption->set('default', 'Maximum Plate', 'text');
$dbo->cols['pk_maxuser']->caption->set('default', 'Max User', 'text');
$dbo->cols['pk_maxorg']->caption->set('default', 'Max Branch', 'text');

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
$dbo->text->listSubmit = 'Submit';
$dbo->text->detailCancel = 'Back';
$dbo->text->detailDelete = 'Delete';
$dbo->text->listNewEditSubmit = 'Save';

?>