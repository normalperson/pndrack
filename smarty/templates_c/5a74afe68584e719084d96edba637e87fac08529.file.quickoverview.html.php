<?php /* Smarty version Smarty-3.1.13, created on 2013-09-29 10:18:18
         compiled from "C:\Zend\Apache2\htdocs\vhotel\smarty\templates\quickoverview.html" */ ?>
<?php /*%%SmartyHeaderCode:1640452478dea8afb02-28586531%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5a74afe68584e719084d96edba637e87fac08529' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\vhotel\\smarty\\templates\\quickoverview.html',
      1 => 1379384214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1640452478dea8afb02-28586531',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'stat' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52478dea984ac7_37283503',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52478dea984ac7_37283503')) {function content_52478dea984ac7_37283503($_smarty_tpl) {?><div id='wrap' class="pagecontent" style="margin-top:30px">
	<table cellspacing="3" width="100%">
	<tr ><td width="55%" valign="top">
	<table id="extracharge" width="100%"  class="ui-custom-table-no-header">
		<thead class="ui-state-default">
		<tr>
			<th colspan="2">Today's Statistic</th>
		</tr>
		</thead>
		<tbody>
			<tr>
				<td style="width:70%;text-align:left">Total Room</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['totalroom'];?>
</td>
			</tr>
			<tr>
				<td style="width:70%;text-align:left">Total Room Available</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['totalavaroom'];?>
</td>
			</tr>
			<tr>
				<td style="width:70%;text-align:left">Current Rooms Occupied</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['occupied'];?>
</td>
			</tr>
			<tr>
				<td style="width:70%;text-align:left">Rooms Due Out</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['expEnd'];?>
</td>
			</tr>			
			<tr>
				<td style="width:70%;text-align:left">Arrival(Unconfirm)</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['expArrival'];?>
</td>
			</tr>
			<tr>
				<td style="width:70%;text-align:left">Projected Occupancy</td>
				<td style="width:70%;text-align:right">to be find out</td>
			</tr>
			<tr>
				<td style="width:70%;text-align:left">Projected ADR</td>
				<td style="width:70%;text-align:right">to be find out</td>
			</tr>			
			<tr>
				<td style="width:70%;text-align:left">Projected RevPar</td>
				<td style="width:70%;text-align:right">to be find out</td>
			</tr>			
		</tbody>	
	</table>
	</td>
	<td width="5%">
		&nbsp;
	</td>
	<td width="40%">
		<table id="extracharge" width="100%"  class="ui-custom-table-no-header">
		<thead class="ui-state-default">
		<tr>
			<th colspan="2">Total Guess</th>
		</tr>
		</thead>
		<tbody>
			<tr>
				<td style="width:70%;text-align:left">Current In House</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['totalPeople'];?>
</td>
			</tr>
			<tr>
				<td style="width:70%;text-align:left">Current for duration</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['totalForDur'];?>
</td>
			</tr>
			<tr>
				<td style="width:70%;text-align:left">Current for night</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['totalForNight'];?>
</td>
			</tr>
			<tr>
				<td style="width:70%;text-align:left">Due to checkout</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['noPeopleDue'];?>
</td>
			</tr>			
			<tr>
				<td style="width:70%;text-align:left">Due to arrive</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['noPeopleArr'];?>
</td>
			</tr>						
		</tbody>	
		</table>	

		<table id="extracharge" width="100%"  class="ui-custom-table-no-header" style="margin-top:20px">
		<thead class="ui-state-default">
		<tr>
			<th colspan="2">Today's activity count</th>
		</tr>
		</thead>
		<tbody>
			<tr>
				<td style="width:70%;text-align:left">Walk In</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['totalwalkin'];?>
</td>
			</tr>
			<tr>
				<td style="width:70%;text-align:left">Walk In(Night)</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['totalwalkinNight'];?>
</td>
			</tr>
			<tr>
				<td style="width:70%;text-align:left">Walk In(Duration)</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['totalwalkinDur'];?>
</td>
			</tr>			
			<tr>
				<td style="width:70%;text-align:left">Due to arrive</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['dueToArrive'];?>
</td>
			</tr>						
			<tr>
				<td style="width:70%;text-align:left">Checked Out</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['checkedOut'];?>
</td>
			</tr>						
			<tr>
				<td style="width:70%;text-align:left">Due Out</td>
				<td style="width:70%;text-align:right"><?php echo $_smarty_tpl->tpl_vars['stat']->value['expEnd'];?>
</td>
			</tr>									
		</tbody>	
		</table>	
	</td>
	</tr>
	</table>

</div>



<?php }} ?>