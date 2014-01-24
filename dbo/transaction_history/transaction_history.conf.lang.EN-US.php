<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['smb_id']->caption->set('default', 'smb_id', 'text');
$dbo->cols['smb_spid']->caption->set('default', 'smb_spid', 'text');
$dbo->cols['smb_printdate']->caption->set('default', 'Print Date', 'text');
$dbo->cols['smb_printqty']->caption->set('default', 'Printed Quantity', 'text');
$dbo->cols['smb_saleamount']->caption->set('default', 'smb_saleamount', 'text');
$dbo->cols['smb_remark']->caption->set('default', 'Remark', 'text');
$dbo->cols['sp_id']->caption->set('default', 'sp_id', 'text');
$dbo->cols['sp_cusid']->caption->set('default', 'Customer', 'text');
$dbo->cols['sp_sfid']->caption->set('default', 'sp_sfid', 'text');
$dbo->cols['sp_parentid']->caption->set('default', 'sp_parentid', 'text');
$dbo->cols['sp_psid']->caption->set('default', 'sp_psid', 'text');
$dbo->cols['sp_masterid']->caption->set('default', 'sp_masterid', 'text');
$dbo->cols['sp_platename']->caption->set('default', 'Platename', 'text');
$dbo->cols['sp_platemodel']->caption->set('default', 'sp_platemodel', 'text');
$dbo->cols['sp_createddate']->caption->set('default', 'sp_createddate', 'text');
$dbo->cols['sp_createdby']->caption->set('default', 'sp_createdby', 'text');
$dbo->cols['sp_status']->caption->set('default', 'sp_status', 'text');
$dbo->cols['sp_orgid']->caption->set('default', 'sp_orgid', 'text');
$dbo->cols['cus_id']->caption->set('default', 'cus_id', 'text');
$dbo->cols['cus_name']->caption->set('default', 'Customer', 'text');
$dbo->cols['cus_regno']->caption->set('default', 'cus_regno', 'text');
$dbo->cols['cus_masterid']->caption->set('default', 'cus_masterid', 'text');
$dbo->cols['cus_contactno']->caption->set('default', 'cus_contactno', 'text');
$dbo->cols['cus_orgid']->caption->set('default', 'cus_orgid', 'text');
$dbo->cols['datefrom']->caption->set('default', 'Date From', 'text');
$dbo->cols['dateto']->caption->set('default', 'Date To', 'text');
$dbo->cols['smb_pdinchar']->caption->set('default', 'smb_pdinchar', 'text');

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