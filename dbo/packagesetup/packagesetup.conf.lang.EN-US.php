<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['pk_id']->caption->set('default', 'pk_id', 'text');
$dbo->cols['pk_description']->caption->set('default', 'pk_description', 'text');
$dbo->cols['pk_price']->caption->set('default', 'pk_price', 'text');
$dbo->cols['pk_minplate']->caption->set('default', 'pk_minplate', 'text');
$dbo->cols['pk_maxplate']->caption->set('default', 'pk_maxplate', 'text');
$dbo->cols['pk_maxuser']->caption->set('default', 'pk_maxuser', 'text');
$dbo->cols['pk_maxorg']->caption->set('default', 'pk_maxorg', 'text');

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