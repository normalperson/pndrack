<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['sf_id']->caption->set('default', 'ID', 'text');
$dbo->cols['sf_name']->caption->set('default', 'Shelf Name ', 'text');
$dbo->cols['sf_row']->caption->set('default', 'Number of Rows', 'text');
$dbo->cols['sf_col']->caption->set('default', 'Number of Columns', 'text');
$dbo->cols['sf_group']->caption->set('default', 'Group', 'text');
$dbo->cols['sf_sgid']->caption->set('default', '组合', 'text');
$dbo->cols['sf_code']->caption->set('default', '架子码', 'text');
$dbo->cols['sf_desc']->caption->set('default', '架子名字', 'text');
$dbo->cols['sf_seq']->caption->set('default', '次序', 'text');
$dbo->cols['sf_totalplate']->caption->set('default', '模板数量', 'text');
$dbo->cols['sf_orgid']->caption->set('default', 'sf_orgid', 'text');

$dbo->titleList = '记录列表';
$dbo->titleDetail = '细节';
$dbo->titleNew = '新增架子';
$dbo->titleEdit = '更改架子';
$dbo->titleSearch = '寻找架子';
$dbo->text->searchCancel = '取消';
$dbo->text->searchSubmit = '寻找';
$dbo->text->editCancel = '取消';
$dbo->text->editSubmit = '储存';
$dbo->text->newCancel = '取消';
$dbo->text->newSubmit = '储存';
$dbo->text->detailCancel = '回';
$dbo->text->detailDelete = '删除';

?>