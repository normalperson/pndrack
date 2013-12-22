<?php /* Smarty version Smarty-3.1.13, created on 2013-12-20 19:41:29
         compiled from "C:\Zend\Apache2\htdocs\pndrack\smarty\templates\header.nh.html" */ ?>
<?php /*%%SmartyHeaderCode:2818852b42c060dad04-71804651%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ca2b06413269370febafb9bd733626f45811bb30' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pndrack\\smarty\\templates\\header.nh.html',
      1 => 1387539652,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2818852b42c060dad04-71804651',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b42c06196027_73274114',
  'variables' => 
  array (
    'charset' => 0,
    'csslist' => 0,
    'css' => 0,
    'jslist' => 0,
    'js' => 0,
    'title' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b42c06196027_73274114')) {function content_52b42c06196027_73274114($_smarty_tpl) {?><!DOCTYPE html>
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
<div id="body" class="container">
	<div class="row"><?php }} ?>