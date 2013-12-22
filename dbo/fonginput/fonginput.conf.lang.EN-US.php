<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['fi_id']->caption->set('default', 'fi_id', '');
$dbo->cols['fi_created']->caption->set('default', 'fi_created', '');
$dbo->cols['fi_text']->caption->set('default', 'fi_text', '');
$dbo->cols['fi_textarea']->caption->set('default', 'fi_textarea', '');
$dbo->cols['fi_select']->caption->set('default', 'fi_select', '');
$dbo->cols['fi_multiselect']->caption->set('default', 'fi_multiselect', '');
$dbo->cols['fi_checkbox']->caption->set('default', 'fi_checkbox', '');
$dbo->cols['fi_radio']->caption->set('default', 'fi_radio', '');
$dbo->cols['fi_date']->caption->set('default', 'fi_date', '');
$dbo->cols['fi_integer']->caption->set('default', 'fi_integer', '');
$dbo->cols['fi_html']->caption->set('default', 'fi_html', '');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';

?>