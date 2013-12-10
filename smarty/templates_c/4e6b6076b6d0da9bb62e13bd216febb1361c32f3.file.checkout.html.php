<?php /* Smarty version Smarty-3.1.13, created on 2013-09-24 23:23:59
         compiled from "C:\Zend\Apache2\htdocs\vhotel\smarty\templates\checkout.html" */ ?>
<?php /*%%SmartyHeaderCode:124375241ae8f210820-66726818%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4e6b6076b6d0da9bb62e13bd216febb1361c32f3' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\vhotel\\smarty\\templates\\checkout.html',
      1 => 1379384214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '124375241ae8f210820-66726818',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5241ae8f2831c7_89794151',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5241ae8f2831c7_89794151')) {function content_5241ae8f2831c7_89794151($_smarty_tpl) {?><div id="container" class="pagecontent" style="margin-top:20px">
<div style="width:100%">
	<label for='searchtext'>Search by room number or customer name</label><input type='text' style="width:70%" class='ui-custom-input ui-corner-all' id='searchtext' name='searchtext'/>
</div>
<!-- custom cash payment div -->
<div id="cashdiv" class="ui-helper-hidden">
	<form id="cashform">
	<div class="ui-widget ui-helper-hidden ui-custom-dialog-alert" id="err_customcash1">
		<div class="ui-state-error ui-corner-all" style="padding: 0pt 0.7em;" id="err_customcash2" style="display:none;"> 
			<p style="text-align:left">
			   <span class="ui-icon ui-icon-alert" style="float: left; margin-right: 0.3em;"></span> 
               <strong>Alert:</strong> Errors detected!
			</p>
			<ul style="text-align:left"></ul>
		</div>
	</div>
	<table>
		<tr>
			<td>Total Charges</td>
			<td style="text-align:right"><span id="cctotal" style="font-weight:bold;text-align:right"></span></td>
		</tr>
		<tr>
			<td>Total Payment</td>
			<td style="text-align:right"><span id="ccpayment" style="font-weight:bold;text-align:right"></span></td>
		</tr>
		<tr>
			<td><label for='cashtotal'>Cash</label></td>
			<td><input type='text'  style="text-align:right" class='ui-custom-input ui-corner-all' id='cashtotal' name='cashtotal' value=""
			    onkeyup="accounting.formatObj(this)" onkeypress="return accounting.isNumericKey(event,this,false,false)" /></td>
		</tr>
	</table>
	</form>
</div>
<!-- Credit card payment div -->
<div id="creditcarddiv" style="display:none">
	<form id="ccardform">
	<div class="ui-widget ui-helper-hidden ui-custom-dialog-alert" id="err_ccard1">
		<div class="ui-state-error ui-corner-all" style="padding: 0pt 0.7em;" id="err_ccard2" style="display:none;"> 
			<p style="text-align:left">
			   <span class="ui-icon ui-icon-alert" style="float: left; margin-right: 0.3em;"></span> 
               <strong>Alert:</strong> Errors detected!
			</p>
			<ul style="text-align:left"></ul>
		</div>
	</div>
	<table>
		<tr>
			<td>Total Charges</td>
			<td style="text-align:left"><span id="ccardtotal" style="font-weight:bold;text-align:right"></span></td>
		</tr>
		<tr>
			<td>Total Payment</td>
			<td style="text-align:left"><span id="ccardpayment" style="font-weight:bold;text-align:right"></span></td>
		</tr>
		<tr>
			<td><label for='cardtype'>Card Type</label></td>
			<td>
				<div id="cardtype">
				<label for='ct_visa'>Visa</label>
				<input type='radio' id='ct_visa' name='cardtype' value="visa" />
				<label for='ct_master'>Master</label>
				<input type='radio' id='ct_master' name='cardtype' value="master"/>
				<label for='ct_amess'>American Express</label>
				<input type='radio' id='ct_amess' name='cardtype' value="amess"/>
				</div>
			</td>
		</tr>
		<tr>
			<td><label for='cardnumber'>Card Number</label></td>
			<td><input type='text' style="width:400px" class='ui-custom-input ui-corner-all' id='cardnumber' name='cardnumber'/></td>
		</tr>
		<tr>
			<td><label for='cardamount'>Amount</label></td>
			<td><input type='text' style="width:400px" class='ui-custom-input ui-corner-all' id='cardamount' name='cardamount'
				onkeyup="accounting.formatObj(this)" onkeypress="return accounting.isNumericKey(event,this,false,false)"/></td>
		</tr>
	</table>
	</form>
</div>
<!-- Additional Charges div -->
<div id="addchargediv" style="display:none">
	<form id="addchargeform">
	<div class="ui-widget ui-helper-hidden ui-custom-dialog-alert" id="err_addcharge1">
		<div class="ui-state-error ui-corner-all" style="padding: 0pt 0.7em;" id="err_addcharge2" style="display:none;"> 
			<p style="text-align:left">
			   <span class="ui-icon ui-icon-alert" style="float: left; margin-right: 0.3em;"></span> 
               <strong>Alert:</strong> Errors detected!
			</p>
			<ul style="text-align:left"></ul>
		</div>
	</div>
	<table>
		<tr>
			<td>Room Type (RoomNo.)</td>
			<td style="text-align:left"><span id="acroominfo" style="font-weight:bold;text-align:left"></span></td>
		</tr>
		<tr>
			<td>Check In Date</td>
			<td style="text-align:left"><span id="accheckindt" style="font-weight:bold;text-align:left"></span></td>
		</tr>
		<tr>
			<td>Current Charges</td>
			<td style="text-align:left"><span id="accharge" style="font-weight:bold;text-align:right"></span></td>
		</tr>		
		<tr>
			<td><label for='acdesc'>Addtional Charges Description</label></td>
			<td><input type='text' style="width:400px" class='ui-custom-input ui-corner-all' id='acdesc' name='acdesc'/></td>
		</tr>
		<tr>
			<td><label for='acamount'>Amount</label></td>
			<td><input type='text' style="width:400px" class='ui-custom-input ui-corner-all' id='acamount' name='acamount'
				onkeyup="accounting.formatObj(this)" onkeypress="return accounting.isNumericKey(event,this,false,false)"/></td>
		</tr>
	</table>
	</form>
</div>
<!-- Custom Price -->
<div id="custompricediv" style="display:none">
	<table>
		<tr>
			<td>Room Type (RoomNo.)</td>
			<td style="text-align:left"><span id="cproominfo" style="font-weight:bold;text-align:left"></span></td>
		</tr>
		<tr>
			<td>Check In Date</td>
			<td style="text-align:left"><span id="cpcheckindt" style="font-weight:bold;text-align:left"></span></td>
		</tr>
		<tr>
			<td>Current Charges
			</td>
			<td style="text-align:left"><span id="cpcharge" style="font-weight:bold;text-align:right"></span></td>
		</tr>
		<tr>
			<td>Addtional Charges</td>
			<td style="text-align:left"><span id="cpaddcharge" style="font-weight:bold;text-align:right"></span></td>
		</tr>
		<tr>
			<td><label>Discount/Markup</label></td>
			<td>
				<div id="pricemodtype" style="width:100%">
				<label for='discount'>Discount</label>
				<input type='radio' class='text' id='discount' name='pricemodtype' value='discount' checked=checked/>
				<label for='markup'>Markup</label>
				<input type='radio' class='text' id='markup' name='pricemodtype' value='markup'/>
				</div>
			</td>
		</tr>
		<tr>
			<td><label for='pricemodpct'><span id="pricemodcaption">Discount</span> Pct</label></td>
			<td><input type='text' style="width:400px" class='ui-custom-input ui-corner-all' id='pricemodpct' name='pricemodpct'
				onkeyup="calculatePriceModAmount(event);accounting.checkMaxNumber(this,100)" /></td>
		</tr>
		<tr>
			<td><label for='pricemodamt'><span id="pricemodcaption">Discount</span> Amount</label></td>
			<td><input type='text' style="width:400px" class='ui-custom-input ui-corner-all' id='pricemodamt' name='pricemodamt'
				onkeyup="calculatePriceModPerc(event);accounting.formatObj(this);"
				onkeypress="return accounting.isNumericKey(event,this,false,false)"/></td>
		</tr>
		<tr>
			<td><strong><label for='newamt'>New Charges</label></strong></td>
			<td><strong><span id ='newamt' name='newamt'></span></strong></td>
		</tr>
	</table>
</div>
<!-- Charge to others div -->
<div id="chargetoroomdiv" style="display:none">
	<table>
		<tr>
			<td>Total:</td>
			<td><span id="othroomtotal" style="font-weight:bold"></span></td>
		</tr>
		<tr>
			<td><label for='currcustname'>Current Customer Name</label></td>
			<td><span id="currcustname"></span></td>
		</tr>
		<tr>
			<td>Charge To:</td>
			<td><input type="hidden" name="other" id="other" style="width:500px" /></td>
		</tr>
	</table>
</div>
<!-- addtional charges list div -->
<div id="addchargelistdiv" style="display:none">
	<table id="extracharge" width="100%"  class="ui-custom-table-no-header">
		<thead class="ui-state-default">
		<tr>
			<th width="5%">No.</th>
			<th width="20%">Room Type (RoomNo)</th>
			<th width="35%">Description</th>
			<th width="20%" style="text-align:right;">Amount</th>
			<th width="10%" style="text-align:right;">Status</th>
			<th width="10%" style="text-align:right;">Action</th>
		</tr>
		</thead>
		<tbody>
			<tr id="emptyRow" class="extrachargerow">
				<td colspan="5">&nbsp;</td>
			</tr>
		</tbody>	
		<tfoot>			
			<tr>
				<td colspan="4" style="text-align:right"><strong>Total:</strong></td>
				<td style="text-align:right"><strong><span id="totalextracharge" ></span></strong></td>
			</tr>
		</tfoot>
	</table>
</div>
<form id="checkoutForm" method="post">	
<input type="hidden" name="mainid" id="mainid" />
<input type="hidden" name="checkoutmode" id="checkoutmode" />
<div id="checkoutDiv" style="display:none">
	<h3>Main Customer Info</h3>
	<div>					
		<table style='text-align:left'>
			<tr>
				<td><label for='custname'>Customer Name</label></td><td><input type='text' class='ui-custom-input ui-corner-all' id='custname' name='custname'/></td>
				<td><label for='custemail'>Email</label></td><td><input type='text' class='ui-custom-input ui-corner-all' id='custemail' name='custemail'/></td>
			</tr>
			<tr>
				<td><label for='custmobile'>Mobile Number</label></td><td><input type='text' class='ui-custom-input ui-corner-all' id='custmobile' name='custmobile'/></td>
				<td><label for='custprimid'>Primary ID</label></td><td><input type='text' class='ui-custom-input ui-corner-all' id='custprimid' name='custprimid'/></td>
			</tr>
			<tr>
				<td><label for='custdob'>Date Of Birth</label></td><td><input type='text' class='ui-custom-input ui-corner-all' id='custdob' name='custdob'/></td>
				<td><label>Gender</label></td>
				<td>
					<div id="gender" style="width:100%">
					<label for='custgenderm'>Male</label>
					<input type='radio' class='text' id='custgenderm' name='custgender' value='M'/>
					<label for='custgenderf'>Female</label>
					<input type='radio' class='text' id='custgenderf' name='custgender' value='F'/>
					</div>
				</td>
			</tr>
			<tr>
				<td><label for='custadd'>Address</label></td>
				<td colspan=3><input style='width:85%' type='text' class='ui-custom-input ui-corner-all' id='custadd' name='custadd'/></td>
			</tr>
			<tr>
				<td><label for='custzipcode'>Zip Code</label></td><td><input type='text' class='ui-custom-input ui-corner-all' id='custzipcode' name='custzipcode'/></td>
				<td><label for='custcity'>City</label></td><td><input type='text' class='ui-custom-input ui-corner-all' id='custcity' name='custcity'/></td>
			</tr>
			<tr>
				<td><label for='custstate'>State</label></td><td><input type='text' class='ui-custom-input ui-corner-all' id='custstate' name='custstate'/></td>
				<td><label for='custcountry'>Country</label></td><td><input type='text' class='ui-custom-input ui-corner-all' id='custcountry' name='custcountry'/></td>
			</tr>
		</table>
	</div>
	<h3>Room Charges</h3>
	<div>
		<table id="roomcharges" width="100%"  class="ui-custom-table-no-header">
			<thead class="ui-state-default">
			<tr>
				<th width="5%">No.</th>
				<th width="20%">Room Type (RoomNo)</th>
				<th width="15%">Date From</th>
				<th width="15%">Date To</th>
				<th width="10%">Room Charges</th>
				<th width="10%">Extra Charges</th>
				<th width="10%" id="thpricemod">Discount/Markup</th>
				<th width="15%" style="text-align:right;">Subtotal</th>
			</tr>
			</thead>
			<tbody>
				<tr id="emptyRow" class="chargesitemrow">
					<td colspan="8">&nbsp;</td>
				</tr>
			</tbody>	
			<tfoot>			
				<tr>
					<td colspan="7" style="text-align:right"><strong>Total:</strong></td>
					<td style="text-align:right"><strong><span id="totalamt" ></span></strong></td>
				</tr>
			</tfoot>
		</table>
		<div id="chargesbutton" style="float:left;margin-top:50px;display:none">
		<input type="button" id="addcharge" value="Add addtional charges" />	
		<input type="button" id="remcharge" value="Remove addtional charges" />	
		<input type="button" id="editcharge" value="Edit room charges" />	
		</div>
	</div>
	<h3>Payment Info</h3>
	<div>
		<table id="paymentinfo" width="100%" class="ui-custom-table-no-header">
			<thead class="ui-state-default">
			<tr>
				<th width="5%">No.</th>
				<th width="50%">Payment Info</th>
				<th width="30%" style="text-align:right;">Amount(VND)</th>
			</tr>
			</thead>
			<tbody>
				<tr id="emptyRow" class="paymentitemrow">
					<td colspan="3">&nbsp;</td>
				</tr>
			</tbody>	
			<tfoot>
				<tr>
					<td colspan="2" style="text-align:right"><strong>Total:</strong></td>
					<td style="text-align:right"><span id="totalpayment" style="font-weight:bold"></span></td>
				</tr>
			</tfoot>
		</table>
		<div id="paybutton" style="float:left;margin-top:50px;display:none">
		<input type="button" id="cash" value="Cash" />	<!-- Able to change the amount and discount -->
		<input type="button" id="creditcard" value="Credit card" />	
		<input type="button" id="clearpay" value="Clear Payment" />	
		</div>
	</div>
</div>
<div id="buttonlist" style="float:left;margin-top:50px;display:none">
<input type="button" id="fastcheckout" value="Quick check out" />	
<input type="button" id="norcheckout" value="Normal check out" />	
<!-- <input type="button" id="chargeothroom" value="Charge to other customer/room" />	 -->
<input type="button" id="void" value="Void" />	
</div>


</form>	
</div><!-- End of Main container -->
<?php }} ?>