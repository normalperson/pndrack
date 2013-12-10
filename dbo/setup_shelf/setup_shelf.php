<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_shelf.conf.php');

# customization
function setup_shelf_customize(&$dbo){
}

$dbo->newModifier = 'setup_shelf_custom_new';
function setup_shelf_custom_new($table, $cols){
	global $DB;
	$ret = array();
/*	$totalrow = $cols['sf_row'];
	$totalcol = $cols['sf_col'];*/
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}else{
		/*$shelfid =  $DB->lastInsertId('smshelfsetting_sf_id_seq');
		// populate the shelf row and columns
		for($row=1;$row<=$totalrow;$row++){
			for($col=1;$col<=$totalcol;$col++){
				$slfcode = 'row_'.$row.'col_'.$col;
				$data = array(
					'slf_row' => $row,
					'slf_col' => $col,
					'slf_code' => $slfcode,
					'slf_sfid' => $shelfid
					);
				$DB->doInsert('smshelf',$data);
			}
		}*/

	}
	return $ret;
}


# final rendering
$dbo->render();
?>