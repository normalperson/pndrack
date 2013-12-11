<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_shelf.conf.php');

# customization
function setup_shelf_customize(&$dbo){
}

$dbo->newModifier = 'setup_shelf_custom_new';
function setup_shelf_custom_new($table, $cols){
	global $DB;
	$ret = array();
	// validation
	$cnt = $DB->GetOne("select count(*) from smshelfsetting where sf_code = :0 and sf_sgid = :1",array($cols['sf_code'],$cols['sf_sgid']));
	if($cnt > 0){
		echo '<script>alert("You are not allow to have duplicated shelf code in the same group");</script>';
		return;
	}

	// get shelf group code
	$sgcode = $DB->GetOne("select sg_code from smshelfgroup where sg_id = :0",array($cols['sf_sgid']));
	$totalslot = $cols['sf_totalplate'];
	$shelfcode = $cols['sf_code'];

	$ok = $DB->doInsert($table, $cols);
	// get the last insert id
	$sfid = $DB->lastInsertId();
	if(!$ok){
		$ret[] = $DB->lastError;
	}else{
		// populate smplateslot
		for ($i = 1;$i<=$totalslot;$i++){
			$slotno = str_pad($i,4,"0",STR_PAD_LEFT);
			$pscode = $sgcode.'-'.$shelfcode.'-'.$slotno;
			$data = array( 
				'ps_sfid' => $sfid,
				'ps_slotno' => $slotno,
				'ps_code' => $pscode
				);
			$ok = $DB->doInsert("smplateslot", $data);
		}		
	}
	return $ret;
}


# final rendering
$dbo->render();
?>