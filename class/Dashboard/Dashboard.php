<?php
require_once(dirname(__FILE__).'/../../init.inc.php');
require_once(dirname(__FILE__).'/../../inc/HotelManagement.inc.php');

class Dashboard{
	function __construct(){
		global $HTML, $GLOBAL, $DB, $USER;
		
	}
	function quickoverview(){
		global $HTML,$DB;

		$HTML->addJS('js/fullcalendar.js');
		$HTML->addJS('js/select2.js');

		$smarty = new Smarty();
		$smarty->caching = false;
		// $smarty->debugging = true;
		$smarty->setTemplateDir(DOC_DIR.DS.'smarty'.DS.'templates');
		$smarty->setCompileDir(DOC_DIR.DS.'smarty'.DS.'templates_c');
		$smarty->setCacheDir(DOC_DIR.DS.'smarty'.DS.'cache');
		$smarty->setConfigDir(DOC_DIR.DS.'smarty'.DS.'configs');				
		$today= date('Y-m-d H:i:s'); 
		$sql = "select count(*) from hroom";
		$totalroom = $DB->GetOne($sql);
		$sql = "select count(*),coalesce(sum(hts_noadult)+sum(hts_nochild),0) from hroomtransaction
				where hts_start > now()::date
				and  hts_start < now()::date + interval '1 day'
				and hts_type = :0
				and hts_status = :1";
		list($expArrival,$noPeopleArr) = $DB->GetRow($sql,array('reserve','NEW'));	

		$sql = "select count(*),coalesce(sum(hts_noadult)+sum(hts_nochild),0) from hroomtransaction
				where now() > hts_expectedend 
				and hts_type = :0
				and hts_status =:1";
		list($expEnd,$noPeopleDue) = $DB->GetRow($sql,array('checkin','NEW'));		

		$sql = "select sum(hts_noadult)+sum(hts_nochild), 
				sum(case when hts_chargetype = 'duration' then hts_noadult+hts_nochild else 0 end) currDuration,
				sum(case when hts_chargetype = 'night' then hts_noadult+hts_nochild else 0 end) currNight
				from hroomtransaction
				where hts_type = :0
				and hts_status = :1";
		list($totalPeople,$totalForDur,$totalForNight) = $DB->GetRow($sql,array('checkin','NEW'));				

		$sql = "select sum(case when hts_type = 'checkin' then 1 else 0 end) totalwalkin,
				sum(case when hts_type = 'checkin' and hts_chargetype='duration' then 1 else 0 end) totalwalkinDur,
				sum(case when hts_type = 'checkin' and hts_chargetype='night' then 1 else 0 end) totalwalkinNig,
				sum(case when hts_type = 'reserve' and hts_status = 'NEW' then 1 else 0 end) dueToArrive,
				sum(case when hts_type = 'checkin' and hts_status = 'DONE' then 1 else 0 end) checkedout
				from hroomtransaction
				where hts_start > now()::date
				and hts_start < now()::date + interval '1 day'";

		list($totalwalkin,$totalwalkinDur,$totalwalkinNight,$dueToArrive,$checkedOut) = $DB->GetRow($sql);

		$hm = new HotelManagement();			
		$totalAvaRoom = $hm->getTotalAvaRoom($today,1);	

		$stat = array(
			'totalroom' => $totalroom,
			'totalavaroom' => $totalAvaRoom,
			'occupied' => $totalroom -$totalAvaRoom - $expEnd - $expArrival,
			'expArrival' =>$expArrival,
			'expEnd' => $expEnd,
			'totalPeople' =>$totalPeople,
			'totalForDur' => $totalForDur,
			'totalForNight' => $totalForNight,
			'noPeopleDue' => $noPeopleDue,
			'noPeopleArr' => $noPeopleArr,
			'totalwalkin' => $totalwalkin,
			'totalwalkinDur' => $totalwalkinDur,
			'totalwalkinNight' => $totalwalkinNight,
			'dueToArrive' => $dueToArrive,
			'checkedOut' => $checkedOut);


		$smarty->assign('stat',$stat);
		
		/*$roomtype = $DB->GetArray("select * from hroomtype order by hrt_seq");
		$smarty->assign('roomtype',$roomtype);*/

		html_header();
		$smarty->display('quickoverview.html');
	}
	function revenueyeartodate(){
		global $HTML,$DB,$THEME;

		
		$smarty = new Smarty();
		$smarty->caching = false;
		// $smarty->debugging = true;
		$smarty->setTemplateDir(DOC_DIR.DS.'smarty'.DS.'templates');
		$smarty->setCompileDir(DOC_DIR.DS.'smarty'.DS.'templates_c');
		$smarty->setCacheDir(DOC_DIR.DS.'smarty'.DS.'cache');
		$smarty->setConfigDir(DOC_DIR.DS.'smarty'.DS.'configs');	

		html_header();
		$HTML->addJS('js/highchart/highcharts.js');
		$smarty->display('revenueyeartodate.html');

	}
	function getYearToDateRevenue(){
		global $DB;
		$sql = "select to_char(date_trunc('MONTH',hmc_receiptdt_byday),'MON-YYYY') monthSale,
			cast( sum( hts_netprice ) as integer ) as totalRev,
			cast( sum( case when hts_chargetype = 'night' then hts_netprice else 0 end) as integer) totalRevByNight,
			cast( sum( case when hts_chargetype = 'duration' then hts_netprice else 0 end) as integer) totalRevByDuration
			from hroommaincust
			join hroomtransaction on hmc_id = hts_hmcid
			where hmc_receiptdt >= date_trunc('YEAR',now())
			and hmc_receiptdt < date_trunc('YEAR',now()) + interval '1 year'
			and hts_type = 'checkin'
			group by date_trunc('MONTH',hmc_receiptdt_byday)
			order by date_trunc('MONTH',hmc_receiptdt_byday)";
		$yearToDate = $DB->GetArray($sql,null,PDO::FETCH_ASSOC);
		echo json_encode($yearToDate);

	}
	function getMonthToDateRevenue(){
		global $DB;
		$sql = "select sum(hts_netprice) totalRev, 
				cast( (sum( case when hts_chargetype = 'night' then hts_netprice else 0 end ) / sum(hts_netprice) * 100) as integer)  as totolByNight,
				cast( (sum( case when hts_chargetype = 'duration' then hts_netprice else 0 end ) / sum(hts_netprice) * 100) as integer)  as totolByDur
				from hroommaincust
				join hroomtransaction on hts_hmcid = hmc_id
				where hmc_receiptdt >= date_trunc('MONTH',now())
				and hmc_receiptdt < date_trunc('MONTH',now()) + interval '1 month'
				and hts_type = 'checkin'";

		$monthToDate = $DB->GetArray($sql,null,PDO::FETCH_ASSOC);
		echo json_encode($monthToDate);

	}
	function revenuemonthtodate(){
		global $HTML,$DB;

		
		$smarty = new Smarty();
		$smarty->caching = false;
		// $smarty->debugging = true;
		$smarty->setTemplateDir(DOC_DIR.DS.'smarty'.DS.'templates');
		$smarty->setCompileDir(DOC_DIR.DS.'smarty'.DS.'templates_c');
		$smarty->setCacheDir(DOC_DIR.DS.'smarty'.DS.'cache');
		$smarty->setConfigDir(DOC_DIR.DS.'smarty'.DS.'configs');	

		$sql = "select sum(hts_netprice) totalRev, 
		sum( case when hts_chargetype = 'night' then hts_netprice else 0 end ) totolByNight,
		sum( case when hts_chargetype = 'duration' then hts_netprice else 0 end ) totolByDur
		from hroommaincust
		join hroomtransaction on hts_hmcid = hmc_id
		where hmc_receiptdt >= date_trunc('MONTH',now())
		and hmc_receiptdt < date_trunc('MONTH',now()) + interval '1 month'
		and hts_type = 'checkin'";

		$monthToDate = $DB->GetRow($sql,null,PDO::FETCH_ASSOC);
		$smarty->assign('monthToDate',$monthToDate);
		html_header();
		$HTML->addJS('js/highchart/highcharts.js');
		$smarty->display('revenuemonthtodate.html');

	}

	
}

$Dashboard = new Dashboard();
?>