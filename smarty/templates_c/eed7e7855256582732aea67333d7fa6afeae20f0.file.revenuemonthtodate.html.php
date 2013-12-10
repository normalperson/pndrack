<?php /* Smarty version Smarty-3.1.13, created on 2013-09-29 10:18:16
         compiled from "C:\Zend\Apache2\htdocs\vhotel\smarty\templates\revenuemonthtodate.html" */ ?>
<?php /*%%SmartyHeaderCode:592752478de892c6d1-71015959%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eed7e7855256582732aea67333d7fa6afeae20f0' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\vhotel\\smarty\\templates\\revenuemonthtodate.html',
      1 => 1379384214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '592752478de892c6d1-71015959',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'monthToDate' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52478de8bf5536_15942084',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52478de8bf5536_15942084')) {function content_52478de8bf5536_15942084($_smarty_tpl) {?><div id="wrap" class="pagecontent">
<table width="100%">
	<tr>
		<td width="60%">
			<div id="monthtodate" style="min-width: 310px; height: 400px; margin: 0 auto">
			</div>
		</td>
		<td width="5%">&nbsp;</td>
		<td width="35%">
			<table id="extracharge" width="100%"  class="ui-custom-table-no-header" style="margin-top:20px">
			<thead class="ui-state-default">
			<tr>
				<th colspan="2">Revenue Month To Date</th>
			</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width:70%;text-align:left">Total</td>
					<td style="width:70%;text-align:right"><?php echo number_format($_smarty_tpl->tpl_vars['monthToDate']->value['totalrev'],0,".",",");?>
</td>
				</tr>
				<tr>
					<td style="width:70%;text-align:left">Revenue By Night</td>
					<td style="width:70%;text-align:right"><?php echo number_format($_smarty_tpl->tpl_vars['monthToDate']->value['totolbynight'],0,".",",");?>
</td>
				</tr>
				<tr>
					<td style="width:70%;text-align:left">Revenue By Duration</td>
					<td style="width:70%;text-align:right"><?php echo number_format($_smarty_tpl->tpl_vars['monthToDate']->value['totolbydur'],0,".",",");?>
</td>
				</tr>			
			</tbody>	
			</table>

			<table id="extracharge" width="100%"  class="ui-custom-table-no-header" style="margin-top:20px">
			<thead class="ui-state-default">
			<tr>
				<th colspan="2">Average Daily Occupancy</th>
			</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width:70%;text-align:left">Monday</td>
					<td style="width:70%;text-align:right">65%</td>
				</tr>
				<tr>
					<td style="width:70%;text-align:left">Tuesday</td>
					<td style="width:70%;text-align:right">82%</td>
				</tr>
				<tr>
					<td style="width:70%;text-align:left">Wednesday</td>
					<td style="width:70%;text-align:right">91%</td>
				</tr>				
				<tr>
					<td style="width:70%;text-align:left">Thursday</td>
					<td style="width:70%;text-align:right">75%</td>
				</tr>								
				<tr>
					<td style="width:70%;text-align:left">Friday</td>
					<td style="width:70%;text-align:right">93%</td>
				</tr>												
				<tr>
					<td style="width:70%;text-align:left">Saturday</td>
					<td style="width:70%;text-align:right">94%</td>
				</tr>																
				<tr>
					<td style="width:70%;text-align:left">Sunday</td>
					<td style="width:70%;text-align:right">97%</td>
				</tr>																				
			</tbody>	
			</table>
		</td>
	</tr>
</table>

</div>

<script type="text/javascript">
var chartdata = {	
	init : function() {
		this.finaldata = new Array();			
		$.ajax({
			url: 'getMonthToDateRevenue',
			dataType: 'json',
			async:   false,
			success: function(results) {
			   var self = chartdata;												                         
	           self.finaldata = [{ 
	           	                 type: 'pie',
	                             name: 'Revenue',
								 data: [
					                    ['By Night',   results[0].totolbynight],
					                    ['Duration',       results[0].totolbydur]
					                  ]
					             }];
			}
		});
	}
};
$(document).ready(function() {
	chartdata.init();
	console.log(chartdata.finaldata);
	// Build the chart
    $('#monthtodate').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false

        },
        title: {
            text: 'Month To Date Revenue'
        },
        tooltip: {
    	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            }
        },
        series:chartdata.finaldata
    });
});
</script>
<?php }} ?>