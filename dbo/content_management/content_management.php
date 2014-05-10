<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'content_management.conf.php');
echo "<style>
#dbo_content_management_edittable , #dbo_content_management_newtable {
	width : 80%;
}
#dbo_content_management_edit_ct_content_ifr , #dbo_content_management_new_ct_content_ifr {
	height : 500px !important;
}

</style>";

function content_management_custom_new($table, $cols){
	global $DB, $USER;
	$ret = array();
	// set the filecation 
	$filelocation = DOC_DIR.DS.'image'.DS.'tutorial'.DS;
	if(isset($cols["ct_imagelocation"]) && ($cols["ct_imagelocation"]["name"]) !=''){
		$allowedExts = array("jpg", "jpeg", "gif", "png","JPG", "JPEG", "GIF", "PNG");
		$tmp = explode(".", $cols["ct_imagelocation"]["name"]);
		$extension = end($tmp);
		# Need to add file size validation
		if ((($cols["ct_imagelocation"]["type"] == "image/gif")
		|| ($cols["ct_imagelocation"]["type"] == "image/jpeg")			
		|| ($cols["ct_imagelocation"]["type"] == "image/png")
		|| ($cols["ct_imagelocation"]["type"] == "image/pjpeg"))
		&& in_array($extension, $allowedExts))
		{
		  if ($cols["ct_imagelocation"]["error"] > 0)
			{
			echo "Return Code: " . $cols["ct_imagelocation"]["error"] . "<br>"; die();
			}
		  else
			{
				$filename = $cols["ct_imagelocation"]["name"];
				  move_uploaded_file($cols["ct_imagelocation"]["tmp_name"],
			 	$filelocation.$cols["ct_imagelocation"]["name"]);

				$fullpath = $filelocation.$cols["ct_imagelocation"]["name"];
				unset($cols['ct_imagelocation']);
				$cols['ct_imagelocation'] = $fullpath;
			  	
			}			
		}
		else
		{
		  echo "Invalid file "; return;
		}
	}else{
		$filename = "NOIMG";
		unset($cols['ct_imagelocation']);
	}

	$cols['ct_created_date'] = $DB->getOne("select now()");
	$cols['ct_created_by'] = $USER->userid;
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}


function content_management_custom_edit($table, $cols, $wheres){
	global $DB, $USER;
	$ret = array();
	$sysdate = $DB->getOne("select now()");
	$cols['ct_last_modified_by'] = $USER->userid;
	$cols['ct_last_modified_date'] = $sysdate;
	$exstatus = $DB->GetOne("select ct_status from smcontent where ct_id=:0", array($wheres['ct_id']));
	if ($exstatus != $cols['ct_status']) $cols['ct_last_status_date'] = $sysdate;


	// set the filecation 
	$filelocation = DOC_DIR.DS.'image'.DS.'tutorial'.DS;
	if(isset($cols["ct_imagelocation"]) && ($cols["ct_imagelocation"]["name"]) !=''){
		$allowedExts = array("jpg", "jpeg", "gif", "png","JPG", "JPEG", "GIF", "PNG");
		$tmp = explode(".", $cols["ct_imagelocation"]["name"]);
		$extension = end($tmp);
		# Need to add file size validation
		if ((($cols["ct_imagelocation"]["type"] == "image/gif")
		|| ($cols["ct_imagelocation"]["type"] == "image/jpeg")			
		|| ($cols["ct_imagelocation"]["type"] == "image/png")
		|| ($cols["ct_imagelocation"]["type"] == "image/pjpeg"))
		&& in_array($extension, $allowedExts))
		{
		  if ($cols["ct_imagelocation"]["error"] > 0)
			{
			echo "Return Code: " . $cols["ct_imagelocation"]["error"] . "<br>"; die();
			}
		  else
			{
				$filename = $cols["ct_imagelocation"]["name"];
				  move_uploaded_file($cols["ct_imagelocation"]["tmp_name"],
			 	$filelocation.$cols["ct_imagelocation"]["name"]);

				$fullpath = $filelocation.$cols["ct_imagelocation"]["name"];
				unset($cols['ct_imagelocation']);
				$cols['ct_imagelocation'] = $fullpath;
			  	
			}			
		}
		else
		{
		  echo "Invalid file "; return;
		}
	}else{
		$filename = "NOIMG";
		unset($cols['ct_imagelocation']);
	}

	
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'content_management_custom_edit';
$dbo->newModifier = 'content_management_custom_new';
# customization
function content_management_customize(&$dbo){
	

}


# final rendering
$dbo->render();
?>