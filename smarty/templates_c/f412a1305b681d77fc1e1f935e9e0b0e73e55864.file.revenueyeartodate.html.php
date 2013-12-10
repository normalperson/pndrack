<?php /* Smarty version Smarty-3.1.13, created on 2013-09-25 11:32:15
         compiled from "C:\Zend\Apache2\htdocs\vhotel\smarty\templates\revenueyeartodate.html" */ ?>
<?php /*%%SmartyHeaderCode:63315242593f9d1692-89386397%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f412a1305b681d77fc1e1f935e9e0b0e73e55864' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\vhotel\\smarty\\templates\\revenueyeartodate.html',
      1 => 1379384214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '63315242593f9d1692-89386397',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5242593fa02968_27939054',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5242593fa02968_27939054')) {function content_5242593fa02968_27939054($_smarty_tpl) {?><div id="yeartodate" class="pagecontent" style="min-width: 310px; height: 400px; margin: 0 auto">
</div>
<!-- <div id="yeartodate"  style="min-width: 310px; height: 400px; margin: 0 auto">
</div> -->

<script type="text/javascript">
var chartdata = {	
	init : function() {
		this.xcategory = new Array();								
		this.totalrev = new Array();		
		this.totalrevbynight = new Array();						
		this.totalrevbydur = new Array();						
		this.finaldata = new Array();			
		$.ajax({
			url: 'getYearToDateRevenue',
			dataType: 'json',
			async:   false,
			success: function(results) {	
				var self = chartdata;								
				self.dataresult = results;
				for (var i=0;i<self.dataresult.length;i++){
					self.xcategory[i] = self.dataresult[i]['monthsale'];
					self.totalrev[i] = self.dataresult[i]['totalrev'];
					self.totalrevbynight[i] = self.dataresult[i]['totalrevbynight'];
					self.totalrevbydur[i] = self.dataresult[i]['totalrevbyduration'];
				}
				self.finaldata = [{ name: 'Total Revenue',
				                   data: self.totalrev
				                  },
				                  { name: 'Revenue By Night',
				                   data: self.totalrevbynight
				                  },
				                  { name: 'Revenue By Duration',
				                   data: self.totalrevbydur
				                  }
				                  ];

				
			}
		});
	}
};
$(document).ready(function() {
	chartdata.init();
	//write the ajax here									
	 $('#yeartodate').highcharts({
	    title: {
	        text: 'Year To Date Revenue',
	        x: -20 //center
	    },
	    xAxis: {
	        categories: chartdata.xcategory,
	    },
	    yAxis: {
	       title: {
			   text: 'Revenue (VND)'
			},
	        plotLines: [{
	            value: 0,
	            width: 1,
	            color: '#808080'
	        }]
	    },
	    tooltip: {
	        valueSuffix: ' DONG'
	    },
	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle',
	        borderWidth: 0
	    },
	    series:chartdata.finaldata
	  });
});
</script>
<?php }} ?>