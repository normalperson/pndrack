<?php /* Smarty version Smarty-3.1.13, created on 2013-09-23 23:38:34
         compiled from "C:\Zend\Apache2\htdocs\vhotel\smarty\templates\frontdesk.html" */ ?>
<?php /*%%SmartyHeaderCode:68575240607acd9538-88829189%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a7b4b42e648c8899a26c320a70855dc1a8870212' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\vhotel\\smarty\\templates\\frontdesk.html',
      1 => 1379384214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '68575240607acd9538-88829189',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'HTMLMSG' => 0,
    'roomtype' => 0,
    'rt' => 0,
    'ERRORMSG' => 0,
    'GFCAPTION' => 0,
    'CALENDAR' => 0,
    'GUESSFORMVAL' => 0,
    'DIABTN' => 0,
    'JSMSG' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5240607ae401f8_60240421',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5240607ae401f8_60240421')) {function content_5240607ae401f8_60240421($_smarty_tpl) {?><div id='wrap' style="margin-top:30px">
<div id='external-events' class="custom-dragable-container ui-helper-hidden">
	<h4><?php echo $_smarty_tpl->tpl_vars['HTMLMSG']->value['roomtype'];?>
</h4>
	<?php  $_smarty_tpl->tpl_vars["rt"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["rt"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['roomtype']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["rt"]->key => $_smarty_tpl->tpl_vars["rt"]->value){
$_smarty_tpl->tpl_vars["rt"]->_loop = true;
?>
	<div class='custom-external-event' data-roomtype="<?php echo $_smarty_tpl->tpl_vars['rt']->value['hrt_id'];?>
" ><?php echo $_smarty_tpl->tpl_vars['rt']->value['hrt_desc'];?>
 (<?php echo $_smarty_tpl->tpl_vars['rt']->value['avairoom'];?>
)</div>
	<?php } ?>
</div>
<div id='legend' class="legend-container" ><?php echo $_smarty_tpl->tpl_vars['HTMLMSG']->value['legend'];?>

	<div class='fc-event-reserve legend-desc' ><?php echo $_smarty_tpl->tpl_vars['HTMLMSG']->value['reserve'];?>
</div>
	<div class='fc-event-checkin legend-desc' ><?php echo $_smarty_tpl->tpl_vars['HTMLMSG']->value['checkedin'];?>
</div>
	<div class='fc-event-done legend-desc' ><?php echo $_smarty_tpl->tpl_vars['HTMLMSG']->value['checkedout'];?>
</div>	
</div>
<!-- Start of calender div -->
<div id='calendar'></div>
<!-- End of calender div -->
<div style='clear:both'></div>

<!-- Start of guessInfo div -->
<div id='guessInfo' style="display:none">
	<!-- Start of form validation error container -->
        <div class="ui-widget ui-helper-hidden ui-custom-dialog-alert" id="errorblock-div1">
			<div class="ui-state-error ui-corner-all" style="padding: 0pt 0.7em;" id="errorblock-div2" style="display:none;"> 
				<p style="text-align:left">
				   <span class="ui-icon ui-icon-alert" style="float: left; margin-right: 0.3em;"></span> 
	               <strong><?php echo $_smarty_tpl->tpl_vars['ERRORMSG']->value['alert'];?>
:</strong> <?php echo $_smarty_tpl->tpl_vars['ERRORMSG']->value['error_detected'];?>
!
				</p>
				<ul style="text-align:left"></ul>
			</div>
		</div>
	<!--  End of validation error container -->
	<form id="guessInfoForm">
	<table id="tblguessinfo" class="ui-custom-table-guessinfo" border="0" >
	<tr>
		<td colspan="4" >
			<div id="roomtype" class="radio" style="width:100%">
				<?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['roomtype'];?>
:
				<?php  $_smarty_tpl->tpl_vars["rt"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["rt"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['roomtype']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["rt"]->key => $_smarty_tpl->tpl_vars["rt"]->value){
$_smarty_tpl->tpl_vars["rt"]->_loop = true;
?>
				<input type="radio" id="rt_<?php echo $_smarty_tpl->tpl_vars['rt']->value['hrt_id'];?>
" name="roomtype" value="<?php echo $_smarty_tpl->tpl_vars['rt']->value['hrt_id'];?>
" /><label for="rt_<?php echo $_smarty_tpl->tpl_vars['rt']->value['hrt_id'];?>
"><?php echo $_smarty_tpl->tpl_vars['rt']->value['hrt_desc'];?>
</label>
				<?php } ?>
			</div>
		</td>
	</tr>
	<tr>
		<td width="50%" colspan="2">
			<div id="chargetype" class="radio" style="width:100%">	
				<?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['roomrate'];?>
:			
				<input type="radio" id="rr_night" name="chargetype" value="night" checked="checked" /><label for="rr_night">By Night</label>
				<input type="radio" id="rr_duration" name="chargetype"  value="duration" /><label for="rr_duration">By Duration</label>
			</div>
		</td>
		<td width="50%" colspan="2">			
			<div id="type" class="radio" style="width:100%">				
				<?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['type'];?>
:		
				<input type="radio" id="reserve" name="type" value="reserve" /><label for="reserve">Reserve</label>
				<input type="radio" id="checkin" name="type"  value="checkin" /><label for="checkin">Check In</label>
			</div>
		</td>
	</tr>			
	<tr>
		<td width="20%">
			<label for="title"><?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['title'];?>
:</label>
			<input id="title" name="title" style="width:60%" class="ui-custom-input ui-corner-all" value="" />
		</td>
		<td width="80%" colspan="3">
			<label for="guessname"><?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['guessname'];?>
:</label>
			<input id="guessname" name="guessname" style="width:70%" class="ui-custom-input ui-corner-all" value="" required />
		</td>
	</tr>	
	<tr>
	<td width="25%">
		<label for="noadult"><?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['noadult'];?>
:</label>
		<input id="noadult" name="noadult" class="spinner" style="width:20px">
	</td>
	<td width="25%">
		<label for="nochild"><?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['nochild'];?>
:</label>
		<input id="nochild" name="nochild" class="spinner" style="width:20px">
	</td>
	<td width="25%">
		<label for="nonight"><?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['nonight'];?>
:</label>
		<input id="nonight" name="nonight" class="spinner" style="width:20px">
	</td>
	<td width="25%">
		<?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['roomno'];?>
:
		<input type="hidden" id="roomno" name="roomno" style="width:100px"/>
	</td>
	</tr>
	<tr>
		<td width="50%" colspan="2">
			<label for="primaryid"><?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['primaryid'];?>
:</label>
			<input id="primaryid" name="primaryid" class="ui-custom-input ui-corner-all" value="" />		
		</td>
		<td width="25%" >
			<label for="contactno"><?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['phone'];?>
:</label>
			<input id="contactno" name="contactno" style="width:50%"  class="ui-custom-input ui-corner-all" value="" />		
		</td>
		<td width="25%" >
			<label for="email"><?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['email'];?>
:</label>
			<input id="email" name="email" style="width:60%" class="ui-custom-input ui-corner-all" value="" />		
		</td>
	</tr>
	<tr>
		<td width="100%" colspan="4" >
			<label for="preference" class="ui-custom-textarealabel"><?php echo $_smarty_tpl->tpl_vars['GFCAPTION']->value['guesspref'];?>
:</label>
			<textarea id="preference" name="preference" style="width:90%" class="ui-custom-textarea ui-corner-all" >
			</textarea>
		</td>
	</tr>
	</table>
	</form>
</div>
<!-- End of guessInfo div-->

</div>
<script type="text/javascript">
var calendartext = {
	'january'   : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['january'];?>
',
	'february'  : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['february'];?>
',
	'march'     : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['march'];?>
',
	'april'     : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['april'];?>
',
	'may'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['may'];?>
',
	'june'      : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['june'];?>
',
	'july'      : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['july'];?>
',
	'august'    : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['august'];?>
',
	'september' : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['september'];?>
',
	'october'   : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['october'];?>
',
	'november'  : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['november'];?>
',
	'december'  : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['december'];?>
',
	'jan'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['jan'];?>
',
	'feb'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['feb'];?>
',
	'mar'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['mar'];?>
',
	'apr'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['apr'];?>
',
	'may'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['may'];?>
',
	'jun'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['jun'];?>
',
	'jul'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['jul'];?>
',
	'aug'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['aug'];?>
',
	'sept'      : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['sept'];?>
',
	'oct'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['oct'];?>
',
	'nov'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['nov'];?>
',
	'dec'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['dec'];?>
',
	'monday'    : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['monday'];?>
',
	'tuesday'   : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['tuesday'];?>
',
	'wednesday' : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['wednesday'];?>
',
	'thursday'  : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['thursday'];?>
',
	'friday'    : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['friday'];?>
',
	'saturday'  : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['saturday'];?>
',
	'sunday'    : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['sunday'];?>
',
	'mon'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['mon'];?>
',
	'tue'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['tue'];?>
',
	'wed'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['wed'];?>
',
	'thu'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['thu'];?>
',
	'fri'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['fri'];?>
',
	'sat'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['sat'];?>
',
	'sun'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['sun'];?>
',
	'today'     : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['today'];?>
',
	'month'     : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['month'];?>
',
	'week'      : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['week'];?>
',
	'day'       : '<?php echo $_smarty_tpl->tpl_vars['CALENDAR']->value['day'];?>
'

};
var guessformval = {
	'valguessname'  : '<?php echo $_smarty_tpl->tpl_vars['GUESSFORMVAL']->value['valguessname'];?>
',
	'valemail'      : '<?php echo $_smarty_tpl->tpl_vars['GUESSFORMVAL']->value['valemail'];?>
',
	'valroomno'     : '<?php echo $_smarty_tpl->tpl_vars['GUESSFORMVAL']->value['valroomno'];?>
',
	'valroomtype'   : '<?php echo $_smarty_tpl->tpl_vars['GUESSFORMVAL']->value['valroomtype'];?>
',
	'valchargetype' : '<?php echo $_smarty_tpl->tpl_vars['GUESSFORMVAL']->value['valchargetype'];?>
',
	'valtype'       : '<?php echo $_smarty_tpl->tpl_vars['GUESSFORMVAL']->value['valtype'];?>
',
	'valprimaryid'  : '<?php echo $_smarty_tpl->tpl_vars['GUESSFORMVAL']->value['valprimaryid'];?>
'
};
var diabtn = {
	'confirm'         : '<?php echo $_smarty_tpl->tpl_vars['DIABTN']->value['confirm'];?>
',
	'close'           : '<?php echo $_smarty_tpl->tpl_vars['DIABTN']->value['close'];?>
',
	'cancelreserve'   : '<?php echo $_smarty_tpl->tpl_vars['DIABTN']->value['cancelreserve'];?>
'
};
var jsmsg = {
	'cfcancelreserve' : '<?php echo $_smarty_tpl->tpl_vars['JSMSG']->value['cfcancelreserve'];?>
',
	'gftitle'         : '<?php echo $_smarty_tpl->tpl_vars['JSMSG']->value['gftitle'];?>
',
	'syserror'        : '<?php echo $_smarty_tpl->tpl_vars['ERRORMSG']->value['syserror'];?>
',
	'noselpassday'    : '<?php echo $_smarty_tpl->tpl_vars['JSMSG']->value['noselpassday'];?>
',
	'nodroppassday'   : '<?php echo $_smarty_tpl->tpl_vars['JSMSG']->value['nodroppassday'];?>
',
	'nomodcomptrans'  : '<?php echo $_smarty_tpl->tpl_vars['JSMSG']->value['nomodcomptrans'];?>
',
	'nochangestartdt' : '<?php echo $_smarty_tpl->tpl_vars['JSMSG']->value['nochangestartdt'];?>
',
	'noless1night'    : '<?php echo $_smarty_tpl->tpl_vars['JSMSG']->value['noless1night'];?>
'
};
</script>


<?php }} ?>