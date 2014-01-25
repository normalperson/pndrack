<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['sg_id']->caption->set('default', 'ID', 'text');
$dbo->cols['sg_groupname']->caption->set('default', '组合', 'text');
$dbo->cols['sg_seq']->caption->set('default', '次序', 'text');
$dbo->cols['sg_orgid']->caption->set('default', 'sg_orgid', 'text');

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
$dbo->text->detailDelete = '删除';

?>