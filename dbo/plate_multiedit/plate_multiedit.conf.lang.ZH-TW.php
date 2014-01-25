<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['sp_id']->caption->set('default', 'sp_id', 'text');
$dbo->cols['cus_masterid']->caption->set('default', 'Master ID', 'text');
$dbo->cols['cus_name']->caption->set('default', '公司名', 'text');
$dbo->cols['sp_platename']->caption->set('default', '模板', 'text');
$dbo->cols['sp_platemodel']->caption->set('default', '其他', 'text');
$dbo->cols['ps_code']->caption->set('default', '条形码', 'text');
$dbo->cols['sf_id']->caption->set('default', '架子', 'text');
$dbo->cols['sp_orgid']->caption->set('default', 'sp_orgid', 'text');
$dbo->cols['sp_status']->caption->set('default', '状态', 'text');
$dbo->cols['sp_cusid']->caption->set('default', '公司名', 'text');

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
$dbo->text->listSubmit = 'Save';
$dbo->text->listNewEditSubmit = 'Save';

?>