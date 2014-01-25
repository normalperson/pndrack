<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['cus_id']->caption->set('default', 'cus_id', 'text');
$dbo->cols['cus_name']->caption->set('default', '公司名', 'text');
$dbo->cols['cus_regno']->caption->set('default', '公司编号', 'text');
$dbo->cols['cus_masterid']->caption->set('default', 'Master ID', 'text');
$dbo->cols['noofplate']->caption->set('default', 'No. Of Plate', 'text');
$dbo->cols['cus_contactno']->caption->set('default', '联络号码', 'text');
$dbo->cols['cus_orgid']->caption->set('default', 'cus_orgid', 'text');

$dbo->titleList = '记录列表';
$dbo->titleDetail = '细节';
$dbo->titleNew = '增加记录';
$dbo->titleEdit = '更改记录';
$dbo->titleSearch = '寻找记录';
$dbo->text->searchCancel = '取消';
$dbo->text->searchSubmit = '寻找';
$dbo->text->editCancel = '取消';
$dbo->text->editSubmit = '储存';
$dbo->text->newCancel = '取消';
$dbo->text->newSubmit = '储存';
$dbo->text->detailCancel = '回去';

?>