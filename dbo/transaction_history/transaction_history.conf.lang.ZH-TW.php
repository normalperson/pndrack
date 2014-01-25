<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['smb_id']->caption->set('default', 'smb_id', 'text');
$dbo->cols['smb_spid']->caption->set('default', 'smb_spid', 'text');
$dbo->cols['smb_printdate']->caption->set('default', '印刷日期', 'text');
$dbo->cols['smb_printqty']->caption->set('default', '印刷数量', 'text');
$dbo->cols['smb_saleamount']->caption->set('default', 'smb_saleamount', 'text');
$dbo->cols['smb_remark']->caption->set('default', '备注', 'text');
$dbo->cols['sp_id']->caption->set('default', 'sp_id', 'text');
$dbo->cols['sp_cusid']->caption->set('default', '公司名', 'text');
$dbo->cols['sp_sfid']->caption->set('default', 'sp_sfid', 'text');
$dbo->cols['sp_parentid']->caption->set('default', 'sp_parentid', 'text');
$dbo->cols['sp_psid']->caption->set('default', 'sp_psid', 'text');
$dbo->cols['sp_masterid']->caption->set('default', 'sp_masterid', 'text');
$dbo->cols['sp_platename']->caption->set('default', '模板', 'text');
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

$dbo->titleList = '记录列表';
$dbo->titleDetail = '细节';
$dbo->titleNew = '新增记录';
$dbo->titleEdit = '更改记录';
$dbo->titleSearch = '寻找记录';
$dbo->text->searchCancel = '取消';
$dbo->text->searchSubmit = '寻找';
$dbo->text->editCancel = '取消';
$dbo->text->editSubmit = '储存';
$dbo->text->newCancel = '取消';
$dbo->text->newSubmit = '储存';
$dbo->text->detailCancel = '回';

?>