<?php
require_once(dirname(__FILE__).'/../../init.inc.php');

class FAQ{
	var $newsPerPage = 5;
	var $eventPerPage = 5;

	function __construct(){
		global $HTML, $GLOBAL, $DB, $USER;
		
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
	function newsevent(){
		global $HTML,$DB, $GLOBAL;

		$HTML->showPageTime = false;
		$smarty = $this->initSmarty();
		$HTML->addCSS("css/css.php?c=FAQ&css=newsevent.css");
		html_header();
		
		$GLOBAL['currnewspage'] = (!empty($GLOBAL['currnewspage'])) ? $GLOBAL['currnewspage'] : 1;
		$GLOBAL['curreventspage'] = (!empty($GLOBAL['curreventspage'])) ? $GLOBAL['curreventspage'] : 1;
		
		
		
		$news = $this->getNews($GLOBAL['currnewspage']);
		$totalnews = $DB->getOne("select count(*) from smcontent where ct_status=:0 and ct_type=:1", array("ACTIVE", "NEWS"));
		if ($totalnews == 0) $totalpage = 1;
		else $totalpage = ceil($totalnews/$this->newsPerPage);
		
		$events = $this->getEvents($GLOBAL['curreventspage']);
		$totalevents = $DB->getOne("select count(*) from smcontent where ct_status=:0 and ct_type=:1", array("ACTIVE", "FAQ"));
		if ($totalevents == 0) $totaleventspage = 1;
		else $totaleventspage = ceil($totalevents/$this->eventPerPage);
		
		if ($GLOBAL['currnewspage'] > $totalpage) $GLOBAL['currnewspage'] = $totalpage;
		if ($GLOBAL['curreventspage'] > $totaleventspage) $GLOBAL['curreventspage'] = $totaleventspage;
		
		
		$smarty->assign("news",$news);
		$smarty->assign("currnewspage",$GLOBAL['currnewspage']);
		$smarty->assign("totalnewspage",$totalpage);
		
		$smarty->assign("events",$events);
		$smarty->assign("curreventspage",$GLOBAL['curreventspage']);
		$smarty->assign("totaleventspage",$totaleventspage);
		
		$smarty->display('faq.html');
		
	}
	function getNews($page) {
		global $DB;
		$limit = $this->newsPerPage;
		$offset = ($page - 1) * $limit;
		
		return $DB->getArray("select a.*, date_format(ct_created_date,'%d-%M-%Y %h:%i') ct_created_date_char,
		date_format(ct_last_modified_date,'%d-%M-%Y %h:%i') ct_last_modified_date_char,
		COALESCE(b.rol_desc, ct_created_by) ct_created_role,
		COALESCE(c.rol_desc, ct_last_modified_by) ct_last_modified_role
		from smcontent a
		left join (select * from fcuserorgrole join fcrole on uor_rolid = rol_id) b on a.ct_created_by = b.uor_usrid
		left join (select * from fcuserorgrole join fcrole on uor_rolid = rol_id) c on a.ct_last_modified_by = c.uor_usrid
		where ct_status=:0 and ct_type=:1 order by ct_id desc limit $limit offset $offset", array("ACTIVE", "FAQ"), PDO::FETCH_ASSOC);
		
	}
	
	function getEvents($page) {
		global $DB;
		$limit = $this->eventPerPage;
		$offset = ($page - 1) * $limit;
		
		return $DB->getArray("select a.*, date_format(ct_created_date,'%d-%M-%Y %h:%i') ct_created_date_char,
		date_format(ct_last_modified_date,'%d-%M-%Y %h:%i') ct_last_modified_date_char,
		COALESCE(b.rol_desc, ct_created_by) ct_created_role,
		COALESCE(c.rol_desc, ct_last_modified_by) ct_last_modified_role
		from smcontent a
		left join (select * from fcuserorgrole join fcrole on uor_rolid = rol_id) b on a.ct_created_by = b.uor_usrid
		left join (select * from fcuserorgrole join fcrole on uor_rolid = rol_id) c on a.ct_last_modified_by = c.uor_usrid
		where ct_status=:0 and ct_type=:1 order by ct_id desc limit $limit offset $offset", array("ACTIVE", "EVENT"), PDO::FETCH_ASSOC);
		
	}

	
}


?>