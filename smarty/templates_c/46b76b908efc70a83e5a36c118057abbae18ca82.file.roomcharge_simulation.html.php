<?php /* Smarty version Smarty-3.1.13, created on 2013-09-25 11:37:29
         compiled from "C:\Zend\Apache2\htdocs\vhotel\smarty\templates\roomcharge_simulation.html" */ ?>
<?php /*%%SmartyHeaderCode:342452425a793fdc93-71711787%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '46b76b908efc70a83e5a36c118057abbae18ca82' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\vhotel\\smarty\\templates\\roomcharge_simulation.html',
      1 => 1379384214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '342452425a793fdc93-71711787',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'roomtype' => 0,
    'rt' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52425a794642a8_91971130',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52425a794642a8_91971130')) {function content_52425a794642a8_91971130($_smarty_tpl) {?><div id="container" class="pagecontent" style="margin-top:20px">
<div id="rcsimulation" >
	<form id="simulation">
	<div class="ui-widget ui-helper-hidden ui-custom-dialog-alert" id="err_simulation1">
	<div class="ui-state-error ui-corner-all" style="padding: 0pt 0.7em;" id="err_simulation2" style="display:none;"> 
		<p style="text-align:left">
		   <span class="ui-icon ui-icon-alert" style="float: left; margin-right: 0.3em;"></span> 
           <strong>Alert:</strong> Errors detected!
		</p>
		<ul style="text-align:left"></ul>
	</div>
	</div>
	<table id="rcsimulation" width="70%"  >
		<thead class="ui-state-default">
			<tr>
				<td colspan="2" style="text-align:center;font-size:1.1em;font-weight:bold">Room Charge Simulation</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><label for='checkindatetime'>CheckInDateTime</label></td>
				<td><input type='text' class='ui-custom-input ui-corner-all' id='checkindatetime' name='checkindatetime' class='ui-custom-input ui-corner-all'/></td>
			</tr>
			<tr>
				<td><label for='checkoutdatetime'>CheckOutDateTime</label></td>
				<td><input type='text' class='ui-custom-input ui-corner-all' id='checkoutdatetime' name='checkoutdatetime' class='ui-custom-input ui-corner-all'/></td>
			</tr>		
			<tr>
				<td>RoomType</td>
				<td>
					<div id="divroomtype" class="radio">
					<?php  $_smarty_tpl->tpl_vars["rt"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["rt"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['roomtype']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["rt"]->key => $_smarty_tpl->tpl_vars["rt"]->value){
$_smarty_tpl->tpl_vars["rt"]->_loop = true;
?>
					<label for='<?php echo $_smarty_tpl->tpl_vars['rt']->value['hrt_id'];?>
'><?php echo $_smarty_tpl->tpl_vars['rt']->value['hrt_desc'];?>
</label>
					<input type='radio' id='<?php echo $_smarty_tpl->tpl_vars['rt']->value['hrt_id'];?>
' name='roomtype' value="<?php echo $_smarty_tpl->tpl_vars['rt']->value['hrt_id'];?>
" />
					<?php } ?>
					</div>
				</td>
			</tr>		
			<tr>
				<td>ChargeType</td>
				<td>
					<div id="divchargetype" class="radio">
					<label for='night'>Night</label>
					<input type='radio' id='night' name='chargetype' value="night" />
					<label for='duration'>Duration</label>
					<input type='radio' id='duration' name='chargetype' value="duration"/>
					</div>
				</td>
			</tr>			
		</tbody>	
		<tfoot>			
			<tr>
				<td style="text-align:right;font-size:1.1em;font-weight:bold">Room Charges:</td>
				<td style="text-align:left;font-size:1.1em;font-weight:bold"><strong><span id="roomcharge" ></span></strong></td>
			</tr>
		</tfoot>
	</table>
	</form>
	<input type="button" id="simulate" value="Simulate" />
	<input type="button" id="reset" value="Reset" />
	<h4>Note: Simulation does not include addtional charges </h4>
</div>
</form>	
</div><!-- End of Main container -->
<?php }} ?>