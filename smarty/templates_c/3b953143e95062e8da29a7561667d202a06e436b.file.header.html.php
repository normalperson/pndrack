<?php /* Smarty version Smarty-3.1.13, created on 2013-12-22 17:22:49
         compiled from "C:\Zend\Apache2\htdocs\pndrack\smarty\templates\header.html" */ ?>
<?php /*%%SmartyHeaderCode:1599552b69189715400-95878418%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3b953143e95062e8da29a7561667d202a06e436b' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pndrack\\smarty\\templates\\header.html',
      1 => 1387703945,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1599552b69189715400-95878418',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b69189934407_94824102',
  'variables' => 
  array (
    'charset' => 0,
    'csslist' => 0,
    'css' => 0,
    'jslist' => 0,
    'js' => 0,
    'title' => 0,
    'APP' => 0,
    'Menu' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b69189934407_94824102')) {function content_52b69189934407_94824102($_smarty_tpl) {?><!DOCTYPE html>
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
<nav class="navbar navbar-inverse navbar-fixed-top" >
   <div class="navbar-header">
    <a class="navbar-brand" href="#">Phi Orion Logo</a>
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  </div>
	<div class="navbar-right"><a href="/<?php echo $_smarty_tpl->tpl_vars['APP']->value;?>
/web/Setting/profile">Profile</a> &nbsp; <a href="/<?php echo $_smarty_tpl->tpl_vars['APP']->value;?>
/login.php?logout=1">Log Out</a></div>
	<div class="nav-collapse" >
		<?php echo $_smarty_tpl->tpl_vars['Menu']->value->renderMenu();?>

	</div>
</nav>
<div id="body" class="container">
	<div class="row">


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
/*		var example = $('#menu').superfish({
			delay:       1000,                            // one second delay on mouseout
			animation:   {opacity:'show',height:'show'},  // fade-in and slide-down animation
			speed:       'fast',                          // faster animation speed
			autoArrows:  false
		});

		$("ul.sf-menu li").addClass("ui-state-default");

		$("ul.sf-menu li").hover(function () { $(this).addClass('ui-state-hover'); },
                 function () { $(this).removeClass('ui-state-hover'); });

		$(".current").addClass("ui-state-active");
*/
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