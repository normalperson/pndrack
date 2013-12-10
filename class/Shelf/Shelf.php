<?php
require_once(dirname(__FILE__).'/../../init.inc.php');

class shelf{
	function __construct(){
		
	}
	function initSmarty(){
		$smarty = new Smarty();
		$smarty->caching = false;
		// $smarty->debugging = true;
		$smarty->setTemplateDir(DOC_DIR.DS.'smarty'.DS.'templates');
		$smarty->setCompileDir(DOC_DIR.DS.'smarty'.DS.'templates_c');
		$smarty->setCacheDir(DOC_DIR.DS.'smarty'.DS.'cache');
		$smarty->setConfigDir(DOC_DIR.DS.'smarty'.DS.'configs');				
		
		return $smarty;
	}	
	function home(){
		global $HTML,$DB,$LANG,$THEME;
		$HTML->showPageTime = false;
		$HTML->addCSS('css/'.$THEME.'/custom.bootstrap.css');
		$smarty = $this->initSmarty();
		$shelfdata = array();
		$shelfsize = array();

		$sql = "select * from smshelfgroup";
		$shelfgroup = $DB->GetArray($sql);

		foreach ($shelfgroup as $key => $val){
			$shelfArr = $DB->GetArray("Select * from smshelfsetting where sf_sgid = :0",array($val['sg_id']));
			$shelfgroup[$key]['shelflist'] =$shelfArr;
		}

		if(isset($_GET['shelfid']) && $_GET['shelfid'] != ''){
			$shelfid = $_GET['shelfid'];
			$sql = "select * from smshelf where slf_sfid = :0 order by slf_id";
			$shelfdata = $DB->GetArray($sql,array($shelfid),PDO::FETCH_ASSOC);

			

			$sql = "select sf_row,sf_col,sf_code from smshelfsetting where sf_id = :0";
			$shelfsize = $DB->GetRow($sql,array($shelfid),PDO::FETCH_ASSOC);

			foreach($shelfdata as $key => $val){
				for($row=1;$row<=$shelfsize['sf_row'];$row++){
					if($row == $val['slf_row']){
						$shelf['ID'][$row][$val['slf_col']] = $val['slf_id'];
						$shelf['QTY'][$row][$val['slf_col']] = $val['slf_qty'];
					}
				}
			}

			$smarty->assign('shelf',$shelf);
			
		}



		$HTML->addCSS('css/css.php?c=shelf&css=shelf');
		html_header();		
		/* div that contains DBO that support shelf board input*/
		echo '
			<!-- Modal -->
			<div id="myModal" class="modal hide fade large" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			    <h3 id="myModalLabel">Modal header</h3>
			  </div>
			  <div class="modal-body">
			  </div>
			  <div class="modal-footer">
			    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
			    <button class="btn btn-primary">Save changes</button>
			  </div>
			</div>';


		$smarty->assign('shelfsize',$shelfsize);
		$smarty->assign('shelfgroup',$shelfgroup);
		$smarty->display('shelf.html');
		$HTML->addJS('js/js.php?c=shelf&js=shelf');
	}
	function getShelfData(){
		global $DB;

		extract($_POST);
		$sql = "select * from smshelf where slf_sfid = :0 order by slf_id";
		$shelfdata = $DB->GetArray($sql,array($shelfid),PDO::FETCH_ASSOC);

		$sql = "select sf_row,sf_col from smshelfsetting where sf_id = :0";
		$shelfsize = $DB->GetRow($sql,array($shelfid),PDO::FETCH_ASSOC);

		echo json_encode(array('shelfdata' =>$shelfdata, 'shelfsize' => $shelfsize));
	}
	function getShelfList(){
		echo '
			<!-- Modal -->
			<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			    <h3 id="myModalLabel">Modal header</h3>
			  </div>
			  <div class="modal-body"> <p>One fine body…</p>';
				dbo_include('shelf_input');
			echo '
			  </div>
			  <div class="modal-footer">
			    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
			    <button class="btn btn-primary">Save changes</button>
			  </div>
			</div>';

	}


	
}

?>