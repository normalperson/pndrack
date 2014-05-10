<?php
require_once(dirname(__FILE__).'/../../init.inc.php');

// table : fclog, log_cat = 'gensummreport', log_cat2 = '2013-03-15', log_ref='NEW/RUNNING/OK/FAILED"
$date = date('Y-m-d', time()-86400);
$hasRecord = $DB->getOne("select count(*) from fclog where log_cat = 'gensummreport' and log_cat2 = '".$date."' and log_ref in ('NEW', 'RUNNING', 'OK')");
if(!$hasRecord && date('H')>=3){
	$DB->execute("call gensummreport('".$date."')");
}
?>