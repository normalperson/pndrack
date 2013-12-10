<?php /* Smarty version Smarty-3.1.13, created on 2013-09-25 11:38:25
         compiled from "C:\Zend\Apache2\htdocs\vhotel\smarty\templates\gensetting.html" */ ?>
<?php /*%%SmartyHeaderCode:1642752425ab1441966-71391521%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fb15d189b38760ae59fd0abb3820768c52a6d178' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\vhotel\\smarty\\templates\\gensetting.html',
      1 => 1379384214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1642752425ab1441966-71391521',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'checkinmin' => 0,
    'checkoutmin' => 0,
    'checkinstr' => 0,
    'checkoutstr' => 0,
    'sessiontime' => 0,
    'eicharge' => 0,
    'locharge' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52425ab14a3179_93192142',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52425ab14a3179_93192142')) {function content_52425ab14a3179_93192142($_smarty_tpl) {?><div id="container" class="pagecontent" style="margin-top:20px">
<div id="gensettingdiv">
	<h3>General Setting</h3>
	<div>					
		<table style='text-align:left'>
			<tr>
				<td><label for='theme'>Theme</label></td>
				<td><input type='hidden' class='ui-custom-input ui-corner-all' style="width:300px" id='theme' name='theme'/></td>
			</tr>
			<tr>
				<td><label for='language'>language</label></td>
				<td><input type='hidden' class='ui-custom-input ui-corner-all'  style="width:500px" id='language' name='language'/></td>
			</tr>
		</table>
	</div>	
	<h3>Time Setting</h3>
	<div>					
		<table style='text-align:left' border="0">
			<tr>
				<td><label for='sessiontime'>Session Timeout </label></td>
				<td><input type="text" id="sessiontime" name="sessiontime" style="border: 0; color: #f6931f; font-weight: bold; width:50px" readonly/>(min)</td>				
			</tr>
			<tr>
				<td colspan="2"><div id="slider-sessiontime" ></div></td>
			</tr>

			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td><label for='defcheckintime'>Default Check In Time</label></td>
				<td><input type="text" id="defcheckintime" name="defcheckintime" style="border: 0; color: #f6931f; font-weight: bold; width:100px" readonly/></td>				
				<td><label for='eicharge'>Early Check In Charges</label></td>
				<td><input type="text" id="eicharge" name="eicharge" class='ui-custom-input ui-corner-all' style="text-align:right"
					onkeyup="accounting.formatObj(this)" onkeypress="return accounting.isNumericKey(event,this,false,false)"/></td>				
			</tr>
			<tr>
				<td colspan="2"><div id="slider-defcheckin"></div></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td><label for='div'>Default Check Out Time</label></td>
				<td><input type="text" id="defcheckouttime" name="defcheckouttime" style="border: 0; color: #f6931f; font-weight: bold; width:100px"  readonly/></td>				
				<td><label for='locharge'>Late Check Out Charges</label></td>
				<td><input type="text" id="locharge" name="locharge" class='ui-custom-input ui-corner-all' style="text-align:right"
					onkeyup="accounting.formatObj(this)" onkeypress="return accounting.isNumericKey(event,this,false,false)"/></td>				
			</tr>
			<tr>
				<td colspan="2"><div id="slider-defcheckout"></div></td>
			</tr>
		</table>
	</div>	
</div>
<div id="buttonlist" style="float:left;margin-top:50px;">
<input type="button" id="resetdefault" value="Reset to default" />	
<input type="button" id="save" value="Save" />	
</div>
</form>	
</div><!-- End of Main container -->
<script type="text/javascript">
var def = {
	'checkinmin'  :<?php echo $_smarty_tpl->tpl_vars['checkinmin']->value;?>
, 
	'checkoutmin' :<?php echo $_smarty_tpl->tpl_vars['checkoutmin']->value;?>
,
	'checkinstr'  :'<?php echo $_smarty_tpl->tpl_vars['checkinstr']->value;?>
',
	'checkoutstr' :'<?php echo $_smarty_tpl->tpl_vars['checkoutstr']->value;?>
',
	'sessiontime' :<?php echo $_smarty_tpl->tpl_vars['sessiontime']->value;?>
,
	'eicharge'    :<?php echo $_smarty_tpl->tpl_vars['eicharge']->value;?>
,
	'locharge'    :<?php echo $_smarty_tpl->tpl_vars['locharge']->value;?>

};
</script>
<?php }} ?>