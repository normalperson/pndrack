<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['org_id']->caption->set('default', 'org_id', 'text');
$dbo->cols['org_code']->caption->set('default', '机构码', 'text');
$dbo->cols['org_name']->caption->set('default', '机构名字', 'text');
$dbo->cols['org_parentid']->caption->set('default', '机构上线', 'text');
$dbo->cols['org_primaryid']->caption->set('default', 'org_primaryid', 'text');
$dbo->cols['org_address']->caption->set('default', '地址', 'text');
$dbo->cols['org_contactno']->caption->set('default', '联络号码', 'text');
$dbo->cols['org_status']->caption->set('default', '状态', 'text');

$dbo->titleList = '记录列表';
$dbo->titleDetail = '细节';
$dbo->titleNew = '新增机构';
$dbo->titleEdit = '更改机构';
$dbo->titleSearch = '寻找机构';
$dbo->text->searchCancel = '取消';
$dbo->text->searchSubmit = '寻找';
$dbo->text->editCancel = '取消';
$dbo->text->editSubmit = '储存';
$dbo->text->newCancel = '取消';
$dbo->text->newSubmit = '储存';
$dbo->text->detailCancel = '回';
$dbo->text->detailDelete = '删除';
$dbo->text->listNewEditSubmit = 'Save';

?>