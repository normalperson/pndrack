<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['totalqty']->caption->set('default', '印刷数量', 'text');
$dbo->cols['totalprint']->caption->set('default', '印刷次数', 'text');
$dbo->cols['sp_platename']->caption->set('default', '模板', 'text');
$dbo->cols['sp_orgid']->caption->set('default', 'sp_orgid', 'text');
$dbo->cols['ratio']->caption->set('default', '印刷比例', 'text');
$dbo->cols['datefrom']->caption->set('default', '从', 'text');
$dbo->cols['dateto']->caption->set('default', '到', 'text');
$dbo->cols['smb_pdinchar']->caption->set('default', '日期', 'text');

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
$dbo->text->listNewEditSubmit = 'Save';

?>