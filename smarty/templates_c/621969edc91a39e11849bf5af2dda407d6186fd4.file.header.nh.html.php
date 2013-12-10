<?php /* Smarty version Smarty-3.1.13, created on 2013-11-09 15:42:49
         compiled from "C:\Zend\Apache2\htdocs\pflexdemo\smarty\templates\header.nh.html" */ ?>
<?php /*%%SmartyHeaderCode:201165279e9da9c0c90-16107090%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '621969edc91a39e11849bf5af2dda407d6186fd4' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pflexdemo\\smarty\\templates\\header.nh.html',
      1 => 1383982818,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '201165279e9da9c0c90-16107090',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5279e9daa3a756_82439884',
  'variables' => 
  array (
    'charset' => 0,
    'csslist' => 0,
    'css' => 0,
    'jslist' => 0,
    'js' => 0,
    'title' => 0,
    'ShowAutoTime' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5279e9daa3a756_82439884')) {function content_5279e9daa3a756_82439884($_smarty_tpl) {?><!DOCTYPE html>
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
	<div id="header" >
		<div class="menu">
<!-- 			<a href="" id="menulogo"></a> -->
			<?php if ($_smarty_tpl->tpl_vars['ShowAutoTime']->value){?><div id="menuinfo"><div id='autotime'></div></div>
			<script type='text/javascript'>
				//date time
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
					document.getElementById('autotime').innerHTML = str;
				}
			</script>
			<?php }?>
		</div>
	</div>	
	<div id="body"><?php }} ?>