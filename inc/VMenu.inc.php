<?php
class VMenu extends Menu{
	var $class;
	var $function;
	var $classMenuCode;
	
	function __construct(){
		parent::__construct();
		$this->class = isset($_GET['webc'])?$_GET['webc']:'';
		$this->function = isset($_GET['webf'])?$_GET['webf']:'';
	}
	function renderMenu(){
		global $DB,$parentMenuIds;
		$sql = "SELECT  menu_level,menu.mn_id, menu.mn_code, menu.mn_parentid, menu.mn_title, 
				menu.mn_status, menu.mn_order, menu.mn_group, menu.mn_url, 
				menu.mn_webflag, menu.mn_class, menu.mn_classlist, menu.mn_func, 
				menu.mn_funclist, menu.mn_param
				FROM    (
				        SELECT  menu_hierarchy(mn_id) AS id, @level AS menu_level
				        FROM    (
				                SELECT  @start_with := 0,
				                        @id := @start_with,
				                        @level := 0
				                ) vars, fcmenu
				        WHERE   @id IS NOT NULL
				        ) ho
				JOIN    fcmenu menu
				ON      menu.mn_id = ho.id order by mn_order ";
		$menuArr = $DB->GetArray($sql);

		foreach($menuArr as $menuitem){
          $parentMenuIds[] = $menuitem['mn_parentid'];
        }
		
		$this->createTreeView($menuArr,1);
	
	}
	function createTreeView($array, $currentParent, $currLevel = 0, $prevLevel = -1,$first=1) {
		global $parentMenuIds;
		foreach ($array as $menukey => $menu) {
			if ($currentParent == $menu['mn_parentid']) {
				if ($currLevel > $prevLevel) {
					# this level is to support bootstrap nav css level 0: class=nav level 1: class=dropdown-menu  level > 1 class=dropdown-submenu
					switch ($currLevel) {
						case 0:
							$ulclass = 'nav navbar-nav';
							break;
						default:
							$ulclass = 'dropdown-menu';
							break;
					}
					echo " <ul class='$ulclass'> "; 
				}
				else if ($currLevel > $prevLevel) echo " <ul> "; 
				if ($currLevel == $prevLevel) echo " </li> ";

				$url = '';
				if($menu['mn_webflag']=='Y'){
					$classList = array($menu['mn_class']);
					if($menu['mn_classlist']){
						$classList = array_merge($classList, explode(', ', $menu['mn_classlist']));
					}
					$funcList = array($menu['mn_func']);
					if($menu['mn_funclist']){
						$funcList = array_merge($funcList, explode(', ', $menu['mn_funclist']));
					}
					$url = '/'.APP.'/web';
					$url .= '/'.$menu['mn_class'];
					$url .= '/'.$menu['mn_func'];
					if($menu['mn_param'])
						$url .= '?'.$menu['mn_param'];
				}else if($menu['mn_url']){
					$url = $menu['mn_url'];
				}
				$class = '';
				if(isset($_GET['webc']) && in_array($_GET['webc'], $classList)){
					$class = "current";
					$this->class = $_GET['webc'];
					$this->classMenuCode = $menu['mn_code'];
					$this->classMenuID = $menu['mn_id'];
				}
				 #echo '<li class="'.$class.'"> <a href="'.$url.'">'.$menu['mn_title'].'</a>';	
				#echo 'current level = '.$currLevel;	
				// support for language translation
				if($currLevel==0 && in_array($menu['mn_id'], $parentMenuIds)) echo '<li class="dropdown '.$class.'"> <a href="'.$url.'" class="dropdown-toggle" data-toggle="dropdown">'.tl($menu['mn_title'],true,'menu').'<span class="caret"></span></a>';		
				#if($currLevel==0 && in_array($menu['mn_id'], $parentMenuIds)) echo '<li class="dropdown '.$class.'"> <a href="'.$url.'" class="dropdown-toggle" data-toggle="dropdown">'.$menu['mn_title'].'<span class="caret"></span></a>';		
				else if ($currLevel!=0 && in_array($menu['mn_id'], $parentMenuIds)) echo '<li class="dropdown-submenu '.$class.'"> <a href="'.$url.'">'.tl($menu['mn_title'],true,'menu').'</a>';
				else echo '<li class="nothing '.$class.'"> <a href="'.$url.'">'.tl($menu['mn_title'],true,'menu').'</a>';		

				
				if ($currLevel > $prevLevel) { $prevLevel = $currLevel; }
			    $currLevel++; 
			    $this->createTreeView ($array, $menu['mn_id'], $currLevel, $prevLevel,++$first);
			    $currLevel--; 
			}
		}
		if ($currLevel == $prevLevel) echo " </li>  </ul> ";
	}
	
	function renderClassMenu(){
		global $DB,$LANG;
		
		$menuid = $DB->getOne("select mn_id from vmenu where mn_code = :0", array($LANG.'-HEADERMENU'));
		$childList = $this->getChildList($menuid);

		echo '<ul>';
		foreach($childList as $child){
			$url = '';
			if($child['mn_webflag']=='Y'){
				$classList = array($child['mn_class']);
				if($child['mn_classlist']){
					$classList = array_merge($classList, explode(', ', $child['mn_classlist']));
				}
				$funcList = array($child['mn_func']);
				if($child['mn_funclist']){
					$funcList = array_merge($funcList, explode(', ', $child['mn_funclist']));
				}
				$url = '/'.APP.'/web';
				$url .= '/'.$child['mn_class'];
				$url .= '/'.$child['mn_func'];
				if($child['mn_param'])
					$url .= '?'.$child['mn_param'];
			}else if($child['mn_url']){
				$url = $child['mn_url'];
			}
			$class = '';
			if(isset($_GET['webc']) && in_array($_GET['webc'], $classList)){
				$class = "active";
				$this->class = $_GET['webc'];
				$this->classMenuCode = $child['mn_code'];
				$this->classMenuID = $child['mn_id'];
			}
			echo '<li class="'.$class.'">';
			echo '<a href="'.$url.'" id="'.substr($child['mn_code'],3).'">'.$child['mn_title'].'</a>';
			echo '</li>';
		}
		echo '</ul>';
	}
	
	function renderFunctionMenu(){
		#$childList = $this->getChildList($this->classMenuID);
		echo '<ul>';
		foreach($childList as $child){
			$url = '';
			if($child['mn_webflag']=='Y'){
				$classList = array($child['mn_class']);
				if($child['mn_classlist']){
					$classList = array_merge($classList, explode(', ', $child['mn_classlist']));
				}
				$funcList = array($child['mn_func']);
				if($child['mn_funclist']){
					$funcList = array_merge($funcList, explode(', ', $child['mn_funclist']));
				}
				$url = '/'.APP.'/web';
				$url .= '/'.$child['mn_class'];
				$url .= '/'.$child['mn_func'];
				if($child['mn_param'])
					$url .= '?'.$child['mn_param'];
			}else if($child['mn_url']){
				$url = $child['mn_url'];
			}
			$class = '';
			if(isset($_GET['webf']) && in_array($_GET['webf'], $funcList)){
				$class = "active";
				$this->function = $_GET['webf'];
				$this->functionMenuCode = $child['mn_code'];
			}
			echo '<li class="'.$class.'">';
			echo '<a href="'.$url.'" id="'.$child[$this->idColumn].'">'.$child['mn_title'].'</a>';
			echo '</li>';
		}
		echo '</ul>';
	}
}
?>