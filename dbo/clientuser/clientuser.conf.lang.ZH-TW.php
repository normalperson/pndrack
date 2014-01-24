<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['usr_userid']->caption->set('default', '用户ID', 'text');
$dbo->cols['usr_password']->caption->set('default', '密码', 'text');
$dbo->cols['usr_created']->caption->set('default', '创建日期', 'text');
$dbo->cols['usr_name']->caption->set('default', '用户名字', 'text');
$dbo->cols['usr_email']->caption->set('default', '电邮地址', 'text');
$dbo->cols['usr_last_active']->caption->set('default', 'usr_last_active', 'text');
$dbo->cols['usr_last_success_login']->caption->set('default', 'usr_last_success_login', 'text');
$dbo->cols['usr_last_fail_login']->caption->set('default', 'usr_last_fail_login', 'text');
$dbo->cols['usr_group']->caption->set('default', '角色', 'text');
$dbo->cols['usr_sessiondata']->caption->set('default', 'usr_sessiondata', 'text');
$dbo->cols['usr_langid']->caption->set('default', '语言', 'text');
$dbo->cols['usr_status']->caption->set('default', '状态', 'text');
$dbo->cols['password2']->caption->set('default', '重复密码', 'text');
$dbo->cols['password1']->caption->set('default', '密码', 'text');
$dbo->cols['orgid']->caption->set('default', 'orgid', 'text');
$dbo->cols['userRole']->caption->set('default', '角色', 'text');
$dbo->cols['currpassword']->caption->set('default', '现今密码', 'text');

$dbo->titleList = '记录列表';
$dbo->titleDetail = '细节';
$dbo->titleNew = '新增用户';
$dbo->titleEdit = '更高用户';
$dbo->titleSearch = '寻找用户';
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