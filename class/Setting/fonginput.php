<?php
require_once(dirname(__FILE__).'/../../init.inc.php');
html_header();
// pr(get_defined_constants());
include(DOC_DIR.'/dbo/fonginput/fonginput.php');

global $DB;
$DB->showsql=1;

// doUpdateAudit($table, $cols, $wheres=false, $auditCols=false)
$DB->doUpdateAudit('fcuser', array('usr_name'=>'new name '.mt_rand(1,10), 'usr_email'=>'new email '.mt_rand(1, 10), 'usr_group'=>'new group '.mt_rand(1, 10)), array('usr_userid'=>'demo1', 'usr_status'=>'ACTIVE'), 'usr_email');
?>