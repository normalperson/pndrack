<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'plate_audit.conf.php');

# customization
function dbo_plate_audit_customize(&$dbo){
}

if(isset($_GET['spid'])){
	$dbo->sql = "select * from fcdbaudit
				where dba_key1 = '".$_GET['spid']."'";
}


# final rendering
$dbo->render();
?>