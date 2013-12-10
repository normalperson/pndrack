<?php /* Smarty version Smarty-3.1.13, created on 2013-09-24 23:24:06
         compiled from "C:\Zend\Apache2\htdocs\vhotel\smarty\templates\receipttemplate.html" */ ?>
<?php /*%%SmartyHeaderCode:294545241ae96ae7cc5-22575761%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '36e5822259a1e47917c3142d20694fcfb0b591a4' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\vhotel\\smarty\\templates\\receipttemplate.html',
      1 => 1379384214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '294545241ae96ae7cc5-22575761',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'custinfo' => 0,
    'transArr' => 0,
    'tr' => 0,
    'tra' => 0,
    'totalcharge' => 0,
    'paymentArr' => 0,
    'pay' => 0,
    'totalpayment' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5241ae96da0e50_20864844',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5241ae96da0e50_20864844')) {function content_5241ae96da0e50_20864844($_smarty_tpl) {?><h2>Receipt</h2>
<table border="0" cellspacing="3" cellpadding="4">
	<tr>
    	<td style="text-align:center;font-weight:bold;border-bottom:1px solid black">Main Guess Info</td>
    </tr>
	<tr>
		<td>
			<table border="0" cellspacing="2" cellpadding="1">
				<tr>		
					<td>Main Guess Name</td>
					<td colspan="3"><?php echo $_smarty_tpl->tpl_vars['custinfo']->value['cus_name'];?>
 <?php if ($_smarty_tpl->tpl_vars['custinfo']->value['cus_gender']!=''){?> (<?php echo $_smarty_tpl->tpl_vars['custinfo']->value['cus_gender'];?>
) <?php }?></td>
					<td>Country</td>
					<td ><?php echo $_smarty_tpl->tpl_vars['custinfo']->value['cus_country'];?>
</td>
				</tr>
				<tr>
					<td>Primary ID</td>
					<td><?php echo $_smarty_tpl->tpl_vars['custinfo']->value['cus_primaryid'];?>
</td>
					<td colspan="2">Email:<?php echo $_smarty_tpl->tpl_vars['custinfo']->value['cus_email'];?>
</td>
					<td>City</td>
					<td><?php echo $_smarty_tpl->tpl_vars['custinfo']->value['cus_city'];?>
</td>
				</tr>
				<tr>
					<td>Contact No</td>
					<td><?php echo $_smarty_tpl->tpl_vars['custinfo']->value['cus_mobilephone'];?>
</td>
					<td>Date Of Birth</td>
					<td><?php echo $_smarty_tpl->tpl_vars['custinfo']->value['cus_dob'];?>
</td>
					<td>Zipcode</td>
					<td><?php echo $_smarty_tpl->tpl_vars['custinfo']->value['cus_zip'];?>
</td>
				</tr>
			</table>
	    </td>
    </tr>
    <tr>
    	<td>&nbsp;</td>
    </tr>	
    <tr>
    	<td style="text-align:center;font-weight:bold;border-bottom:1px solid black">Charges Info</td>
    </tr>
    <tr>
    	<td>
    		<table cellspacing="2" cellpadding="1">
    			<thead >
    			<tr  style="color:white;font-weight:bold;background-color:black">
					<td>No.</td>
					<td>Room Type</td>
					<td>Date From</td>
					<td>Date To</td>		
					<td>Room Charge</td>		
					<td style="text-align:right">Subtotal</td>		
				</tr>
				</thead>
				<?php  $_smarty_tpl->tpl_vars["tr"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["tr"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['transArr']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["tr"]->key => $_smarty_tpl->tpl_vars["tr"]->value){
$_smarty_tpl->tpl_vars["tr"]->_loop = true;
?>
				<tr>
					<td><?php echo $_smarty_tpl->tpl_vars['tr']->value['rownum'];?>
</td>
					<td><?php echo $_smarty_tpl->tpl_vars['tr']->value['roomtype'];?>
</td>
					<td><?php echo $_smarty_tpl->tpl_vars['tr']->value['startdt'];?>
</td>
					<td><?php echo $_smarty_tpl->tpl_vars['tr']->value['enddt'];?>
</td>		
					<td style="text-align:right"><?php echo number_format($_smarty_tpl->tpl_vars['tr']->value['roomoricharges'],0,".",",");?>
</td>		
					<td style="text-align:right"><?php echo number_format($_smarty_tpl->tpl_vars['tr']->value['roomoricharges'],0,".",",");?>
</td>	
				</tr>
					<?php  $_smarty_tpl->tpl_vars["tra"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["tra"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['tr']->value['addCharge']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["tra"]->key => $_smarty_tpl->tpl_vars["tra"]->value){
$_smarty_tpl->tpl_vars["tra"]->_loop = true;
?>
					<tr>
						<td>&nbsp;</td>
						<td>Extra Charge</td>
						<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['tra']->value['had_description'];?>
</td>
						<td>(<?php echo $_smarty_tpl->tpl_vars['tra']->value['had_status'];?>
)</td>		
						<td style="text-align:right"><?php if ($_smarty_tpl->tpl_vars['tra']->value['had_status']=='VOID'){?><strike><?php }?>
							<?php echo number_format($_smarty_tpl->tpl_vars['tra']->value['had_amount'],0,".",",");?>

							<?php if ($_smarty_tpl->tpl_vars['tra']->value['had_status']=='VOID'){?></strike><?php }?>
						</td>		
					</tr>
					<?php } ?>
				<tr>
					<td colspan="2">&nbsp;</td>
					<td colspan="3">Discount/Markup</td>
					<td style="text-align:right"><?php echo number_format($_smarty_tpl->tpl_vars['tr']->value['customamt'],0,".",",");?>
</td>		
				</tr>
				<tr>
					<td colspan="3">&nbsp;</td>
					<td colspan="2" style="font-weight:bold">Total for this room</td>
					<td style="font-weight:bold;text-align:right"><?php echo number_format($_smarty_tpl->tpl_vars['tr']->value['netcharges'],0,".",",");?>
</td>		
				</tr>
				<?php } ?>
				<?php if ($_smarty_tpl->tpl_vars['totalcharge']->value['totalroom']>1){?>
				<tfoot>
					<tr>
						<td colspan="3">&nbsp;</td>
						<td colspan="2" style="font-weight:bold">TOTAL</td>
						<td style="font-weight:bold;text-align:right"><?php echo number_format($_smarty_tpl->tpl_vars['totalcharge']->value['finaltotal'],0,".",",");?>
</td>		
					</tr>
				</tfoot>
				<?php }?>
    		</table>
    	</td>
    </tr>
       <tr>
    	<td>&nbsp;</td>
    </tr>
    <tr>
    	<td style="text-align:center;font-weight:bold;border-bottom:1px solid black">Payment Info</td>
    </tr>
    <tr>
    	<td>
    		<table cellspacing="2" cellpadding="1">
				<tr style="color:white;font-weight:bold;background-color:black;">
					<td>No.</td>
					<td colspan="4">Payment Type</td>
					<td style="text-align:right">Payment Amount</td>		
				</tr>
				<?php  $_smarty_tpl->tpl_vars["pay"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["pay"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['paymentArr']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["pay"]->key => $_smarty_tpl->tpl_vars["pay"]->value){
$_smarty_tpl->tpl_vars["pay"]->_loop = true;
?>
				<tr>
					<td><?php echo $_smarty_tpl->tpl_vars['pay']->value['rownum'];?>
</td>
					<td colspan="4"><?php echo $_smarty_tpl->tpl_vars['pay']->value['paydesc'];?>
</td>
					<td style="text-align:right"><?php echo number_format($_smarty_tpl->tpl_vars['pay']->value['amount'],0,".",",");?>
</td>		
				</tr>
				<?php } ?>
				<tr>
					<td colspan="3">&nbsp;</td>
					<td colspan="2" style="font-weight:bold">Total Payment</td>
					<td style="font-weight:bold;text-align:right"><?php echo number_format($_smarty_tpl->tpl_vars['totalpayment']->value,0,".",",");?>
</td>		
				</tr>
			</table>
    	</td>
    </tr>
</table><?php }} ?>