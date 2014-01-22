<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['totalqty']->caption->set('default', 'Total Print Quantity', 'text');
$dbo->cols['totalprint']->caption->set('default', 'Count', 'text');
$dbo->cols['cus_name']->caption->set('default', 'Customer Name', 'text');
$dbo->cols['ratio']->caption->set('default', 'Print Ratio', 'text');

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
$dbo->text->listNewEditSubmit = 'Save';

?>