<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['slf_id']->caption->set('default', 'slf_id', 'text');
$dbo->cols['slf_sfid']->caption->set('default', 'slf_sfid', 'text');
$dbo->cols['slf_code']->caption->set('default', 'slf_code', 'text');
$dbo->cols['slf_row']->caption->set('default', 'slf_row', 'text');
$dbo->cols['slf_col']->caption->set('default', 'slf_col', 'text');
$dbo->cols['slf_qty']->caption->set('default', 'slf_qty', 'text');
$dbo->cols['sfi_id']->caption->set('default', 'sfi_id', 'text');
$dbo->cols['sfi_itemname']->caption->set('default', 'Item Name', 'text');
$dbo->cols['sfi_slfid']->caption->set('default', 'sfi_slfid', 'text');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';

?>