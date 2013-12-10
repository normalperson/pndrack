<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['sf_id']->caption->set('default', 'ID', 'text');
$dbo->cols['sf_name']->caption->set('default', 'Shelf Name ', 'text');
$dbo->cols['sf_row']->caption->set('default', 'Number of Rows', 'text');
$dbo->cols['sf_col']->caption->set('default', 'Number of Columns', 'text');
$dbo->cols['sf_group']->caption->set('default', 'Group', 'text');
$dbo->cols['sf_sgid']->caption->set('default', 'Group', 'text');
$dbo->cols['sf_code']->caption->set('default', 'Shelf Code', 'text');
$dbo->cols['sf_desc']->caption->set('default', 'Description', 'text');
$dbo->cols['sf_seq']->caption->set('default', 'Sequence', 'text');

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