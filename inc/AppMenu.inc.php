<?php
class AppMenu extends Menu{
	var $class;
	var $function;
	var $treeRS;
	
	function __construct(){
		parent::__construct();
		$this->class = isset($_GET['webc'])?$_GET['webc']:'';
		$this->function = isset($_GET['webf'])?$_GET['webf']:'';
		$this->loadMenu();
	}
	
	function loadMenu() {
		global $DB, $USER;
		$menuRS = $DB->GetArray("select * from fcmenu where mn_status = 'ACTIVE' order by mn_order", false, PDO::FETCH_ASSOC);
		foreach ($menuRS as $i=>$r) {
			if ($r['mn_pmscode'] && !$USER->inGroup($r['mn_pmscode'])) {
				unset($menuRS[$i]);
				continue;
			}
		}
		$retRS = arr2tree($menuRS, 'mn_id', 'mn_parentid');
		foreach ($retRS as $rt) {
			if ($rt['mn_code'] == 'HEADERMENU') {
				$this->treeRS = $rt['__CHILDREN'];
				break;
			}
		}
	}
	
	function render(){
		if (!$this->treeRS) {
			$this->loadMenu();
			if (!$this->treeRS) return;
		}
		$this->renderBootstrapNavi($this->treeRS);
	}
	
	function renderBootstrapNavi($menuRS, $lvl = 0, $prependLi = array()) {
		if ($lvl === 0) echo "<ul class='nav navbar-nav'>";
		else echo "<ul class='dropdown-menu'>";
		foreach ($prependLi as $li) {
			echo $li;
		}
		foreach ($menuRS as $r) {
			$url = false; $anchorclass = "without-link";
			if ($r['mn_webflag'] == 'Y' && !empty($r['mn_class']) && !empty($r['mn_func']))  {
				$url = "/".APP."/web/{$r['mn_class']}/{$r['mn_func']}";
			}
			else if ($r['mn_webflag'] != 'Y' && !empty($r['mn_url'])) {
				$url = $r['mn_url'];
			}
			if($url && !empty($r['mn_param'])) {
				if (strpos($url, "?")) $url .= '&'.$r['mn_param'];
				else $url .= '?'.$r['mn_param'];
			}
			if (!$url) $url = "javascript:void(0)";
			else $anchorclass = "with-link";
			
			if ($r['__CHILDREN']) {
				if ($lvl === 0) {
					echo "<li class='dropdown'><a href='$url' class='dropdown-toggle $anchorclass' data-toggle='dropdown'>{$r['mn_title']} <span class='caret'></span></a>";
				}
				else echo "<li class='dropdown dropdown-submenu'><a href='$url' class='dropdown-toggle $anchorclass' data-toggle='dropdown'>{$r['mn_title']}</a>";
				
				$prependLi = array();
				if ($url != "javascript:void(0)") {
					$prependLi[] = "<li><a href='$url' class='$anchorclass'>{$r['mn_title']}</a></li>";
					$prependLi[] = "<li class='divider'></li>";
				}
				$this->renderBootstrapNavi($r['__CHILDREN'],$lvl+1, $prependLi);
				echo "</li>";
			}
			else echo "<li><a href='$url' class='$anchorclass'>{$r['mn_title']}</a></li>";
		}
		echo "</ul>";
	}
}
?>