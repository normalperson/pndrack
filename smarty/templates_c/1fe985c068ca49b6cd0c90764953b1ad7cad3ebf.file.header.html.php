<?php /* Smarty version Smarty-3.1.13, created on 2013-11-04 09:26:49
         compiled from "C:\Zend\Apache2\htdocs\pflexdemo\smarty\templates\header.html" */ ?>
<?php /*%%SmartyHeaderCode:99725271ffcb386156-87334621%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1fe985c068ca49b6cd0c90764953b1ad7cad3ebf' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pflexdemo\\smarty\\templates\\header.html',
      1 => 1383528407,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '99725271ffcb386156-87334621',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5271ffcb433661_55449109',
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
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5271ffcb433661_55449109')) {function content_5271ffcb433661_55449109($_smarty_tpl) {?><!DOCTYPE html>
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
<div id="headercontainer" >
	<nav class="navbar navbar-inverse affix" >
	<div class="navbar-inner" style="width=100%">
		<!-- Just to show smaller navigation icon -->
		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
		</a>
		<a class="brand" href="#">Phi Orion Logo</a>
		<a class="pull-right" href="#">Log Out</a>
		<div class="nav-collapse" >
			<?php echo $_smarty_tpl->tpl_vars['Menu']->value->renderMenu();?>

		</div>
	</div>
	</nav>
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