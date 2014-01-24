<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['ct_id']->caption->set('default', 'ct_id', 'text');
$dbo->cols['ct_type']->caption->set('default', '种类', 'text');
$dbo->cols['ct_title']->caption->set('default', '题目', 'text');
$dbo->cols['ct_content']->caption->set('default', '内容', 'text');
$dbo->cols['ct_created_date']->caption->set('default', '创建日', 'text');
$dbo->cols['ct_created_by']->caption->set('default', '创建者', 'text');
$dbo->cols['ct_last_modified_date']->caption->set('default', '更改日期', 'text');
$dbo->cols['ct_last_modified_by']->caption->set('default', '更改者', 'text');
$dbo->cols['ct_status']->caption->set('default', '状态', 'text');
$dbo->cols['ct_last_status_date']->caption->set('default', '状态日期', 'text');
$dbo->cols['ct_approval_status']->caption->set('default', 'Approval Status', 'text');
$dbo->cols['ct_approval_date']->caption->set('default', 'Approval Date', 'text');
$dbo->cols['ct_approval_by']->caption->set('default', 'Approval By', 'text');

$dbo->titleList = '文章管理';
$dbo->titleDetail = '细节';
$dbo->titleNew = '新增文章';
$dbo->titleEdit = '更改文章';
$dbo->titleSearch = '寻找文章';
$dbo->text->searchCancel = '取消';
$dbo->text->searchSubmit = '寻找';
$dbo->text->editCancel = '取消';
$dbo->text->editSubmit = '储存';
$dbo->text->newCancel = '取消';
$dbo->text->newSubmit = '储存';
$dbo->text->detailCancel = '回';
$dbo->text->detailDelete = '删除';

?>