<?php /* Smarty version Smarty-3.1.13, created on 2013-10-26 11:08:07
         compiled from "C:\Zend\Apache2\htdocs\newapp\smarty\templates\header.html" */ ?>
<?php /*%%SmartyHeaderCode:7463526b32171f62e7-28330236%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bb825c8dd5cd57d4980748d5cf9a8ac0f392c39d' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\newapp\\smarty\\templates\\header.html',
      1 => 1379936875,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7463526b32171f62e7-28330236',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'charset' => 0,
    'csslist' => 0,
    'css' => 0,
    'jslist' => 0,
    'js' => 0,
    'title' => 0,
    'Menu' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_526b32172aed10_56780630',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_526b32172aed10_56780630')) {function content_526b32172aed10_56780630($_smarty_tpl) {?><!DOCTYPE html>
<html>
<head>
	<meta charset="<?php echo $_smarty_tpl->tpl_vars['charset']->value;?>
">
<?php  $_smarty_tpl->tpl_vars["css"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["css"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['csslist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["css"]->key => $_smarty_tpl->tpl_vars["css"]->value){
$_smarty_tpl->tpl_vars["css"]->_loop = true;
?>
	<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['css']->value;?>
">
<?php } ?>	
<?php  $_smarty_tpl->tpl_vars["js"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["js"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jslist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["js"]->key => $_smarty_tpl->tpl_vars["js"]->value){
$_smarty_tpl->tpl_vars["js"]->_loop = true;
?>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['js']->value;?>
"></script>
<?php } ?>
	<title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title>
</head>
<body>
<div id="container">
	<div id="banner" class="pagecontent">
	</div>
	<div id="headermenu" class="pagecontent">		
		<table width="100%">
			<tr>
				<td align="left"><a href="" id="menulogo"></a></td>
				<td align="right"><div id="menuinfo">Admin , <a href='..'>Logout</a><div id='autotime'></div></div></td>
			</tr>
		</table>
		<div class="ui-state-default" style="height:45px;width=100%">
			<?php echo $_smarty_tpl->tpl_vars['Menu']->value->renderMenu();?>

		</div>
	</div>

<div id="body">


<script type="text/javascript">

(function($){ //create closure so we can safely use $ as alias for jQuery
	// initialize number format
	accounting.settings = {
		currency: {
			symbol : "VND",   // default currency symbol is '$'
			format: "%v%s", // controls output: %s = symbol, %v = value/number (can be object: see below)
			decimal : ".",  // decimal point separator
			thousand: ",",  // thousands separator
			precision : 0   // decimal places
		},
		number: {
			precision : 0,  // default precision on numbers is 0
			thousand: ",",
			decimal : "."
		}
	};

	$(document).ready(function(){
		// initialise plugin
		var example = $('#menu').superfish({
			delay:       1000,                            // one second delay on mouseout
			animation:   {opacity:'show',height:'show'},  // fade-in and slide-down animation
			speed:       'fast',                          // faster animation speed
			autoArrows:  false
		});

		$("ul.sf-menu li").addClass("ui-state-default");

		$("ul.sf-menu li").hover(function () { $(this).addClass('ui-state-hover'); },
                 function () { $(this).removeClass('ui-state-hover'); });

		$(".current").addClass("ui-state-active");

		refreshAutotime();
		window.setInterval(refreshAutotime, 1000);
		function refreshAutotime(){
			var arrDay = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
			var arrMonth = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
			var now = new Date();
			var str = arrDay[now.getDay()];
			str = str + ', ' + now.getDate();
			str = str + ' ' + arrMonth[now.getMonth()];
			str = str + ', ' + now.getFullYear();
			str = str + ' ' + ((now.getHours()%12)<1?12:(now.getHours()%12));
			str = str + ':' + (now.getMinutes()>9?'':'0') + now.getMinutes();
			str = str + '' + (now.getHours()>12?'PM':'AM');
			$('#autotime').text(str);
		}
	});
})(jQuery);
</script>
<?php }} ?>