<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['fi_id']->caption->set('default', 'fi_id', 'text');
$dbo->cols['fi_created']->caption->set('default', 'fi_created', 'text');
$dbo->cols['fi_text']->caption->set('default', 'fi_text', 'text');
$dbo->cols['fi_textarea']->caption->set('default', 'fi_textarea', 'text');
$dbo->cols['fi_select']->caption->set('default', 'fi_select', 'text');
$dbo->cols['fi_multiselect']->caption->set('default', 'fi_multiselect', 'text');
$dbo->cols['fi_checkbox']->caption->set('default', 'fi_checkbox', 'text');
$dbo->cols['fi_radio']->caption->set('default', 'fi_radio', 'text');
$dbo->cols['fi_date']->caption->set('default', 'fi_date', 'text');
$dbo->cols['fi_integer']->caption->set('default', 'fi_integer', 'text');
$dbo->cols['fi_html']->caption->set('default', 'fi_html', 'text');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';
$dbo->text->searchCancel = 'Reset';
$dbo->text->searchSubmit = 'Search';
$dbo->text->editCancel = 'Cancel';
$dbo->text->editSubmit = 'Edit';
$dbo->text->newCancel = 'Cancel';
$dbo->text->newSubmit = 'Submit';
$dbo->text->listSubmit = 'Submit';
$dbo->text->detailCancel = 'Back';
$dbo->text->detailDelete = 'Delete';

?>