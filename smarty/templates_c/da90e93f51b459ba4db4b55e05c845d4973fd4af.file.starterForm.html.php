<?php /* Smarty version Smarty-3.1.13, created on 2013-11-21 16:14:24
         compiled from "C:\Zend\Apache2\fcore\inc\DBO\tpl\starterForm.html" */ ?>
<?php /*%%SmartyHeaderCode:596252748d997182c9-12569796%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'da90e93f51b459ba4db4b55e05c845d4973fd4af' => 
    array (
      0 => 'C:\\Zend\\Apache2\\fcore\\inc\\DBO\\tpl\\starterForm.html',
      1 => 1385002085,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '596252748d997182c9-12569796',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52748d99826ce2_85533162',
  'variables' => 
  array (
    'dbo' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52748d99826ce2_85533162')) {function content_52748d99826ce2_85533162($_smarty_tpl) {?><style type="text/css">
div.dbo_container a:link, div.dbo_container a:visited{
	text-decoration:none;
}
div.dbo_container a:hover{
}
#multipart_container > table{
	border-width:0px;
	border-spacing:0px;
}
#multipart_container input.button[type="submit"], #multipart_container input.button[type="button"]{
	background-color:transparent;
	border:1px solid grey;
	cursor:pointer;
	border-radius:5px;
}
#multipart_container input.button:hover{
}
#multipart_container2 > div{
	padding:5px;
	border:1px solid grey;
	border-top-right-radius:5px;
	border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
}
#multipart_container2 > div input[type="text"], #multipart_container2 > div textarea, #multipart_container2 > div select{
	border:1px solid grey;
	border-radius:3px;
	padding:2px 3px;
}
#multipart_container2 > div textarea{
	width:600px;
	height:80px;
}
td.configtab_container a{
	display:inline-block;
	padding:2px 10px;
	margin-right:1px;
	border:1px solid grey;
	border-top-left-radius:10px;
	border-top-right-radius:10px;
	position:relative;
	top:3px;
	background-color:#47afec;
	color:white;
	font-weight:bold;
}
td.configtab_container a.active{
	background-color:#ffffff;
	color:#47afec;
	border-bottom:1px solid transparent;
}
</style>
<div class="dbo_container">
<div class="dbo_starterform_container">
	<form name="dbo_starterform" id="dbo_starterform" method="post">
	<input type="hidden" name="starterform" id="starterform" value="1"/>
	<div id="multipart_container">
		<table>
			<thead>
				<tr>
					<td class="configtab_container">
						<a id="switch_dbosetup" href="javascript:showConfigTab('dbosetup')">DBO Setup</a>
					</td>
					<td align="right"><input class="button" type="submit" name="submit" id="submit" value="Submit"/></td>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td class="configtab_container">&nbsp;</td>
					<td align="right"><input class="button" type="submit" name="submit" id="submit" value="Submit"/></td>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<td id="multipart_container2" colspan="2">
<div id="div_dbosetup">
	<table>
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" id="id" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value['id'];?>
"/></td>
		</tr>
		<tr>
			<td>Table</td>
			<td><input type="text" name="table" id="table" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value['table'];?>
"/></td>
		</tr>
		<tr>
			<td>SQL</td>
			<td><textarea name="sql" id="sql"><?php echo $_smarty_tpl->tpl_vars['dbo']->value['sql'];?>
</textarea></td>
		</tr>
	</table>
</div></td>
				</tr>
			</tbody>
		</table>
	</div>
	</form>
</div>
</div><?php }} ?>