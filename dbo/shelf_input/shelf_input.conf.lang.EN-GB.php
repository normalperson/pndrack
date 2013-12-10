<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['slf_id']->caption->set('default', 'slf_id', '');
$dbo->cols['slf_sfid']->caption->set('default', 'slf_sfid', '');
$dbo->cols['slf_code']->caption->set('default', 'slf_code', '');
$dbo->cols['slf_row']->caption->set('default', 'slf_row', '');
$dbo->cols['slf_col']->caption->set('default', 'slf_col', '');
$dbo->cols['slf_qty']->caption->set('default', 'slf_qty', '');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';

?>