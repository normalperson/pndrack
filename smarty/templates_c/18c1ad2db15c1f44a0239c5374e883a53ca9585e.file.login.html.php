<?php /* Smarty version Smarty-3.1.13, created on 2013-12-14 15:05:15
         compiled from "C:\Zend\Apache2\htdocs\pndrack\smarty\templates\login.html" */ ?>
<?php /*%%SmartyHeaderCode:3091052ac032b41f895-86928358%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '18c1ad2db15c1f44a0239c5374e883a53ca9585e' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pndrack\\smarty\\templates\\login.html',
      1 => 1379384214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3091052ac032b41f895-86928358',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'contents' => 0,
    'year' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ac032b47f181_64283556',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ac032b47f181_64283556')) {function content_52ac032b47f181_64283556($_smarty_tpl) {?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<title>Login</title>
</head>
<body>
<table class="container" align="center">
	<tr>
		<td rowspan="2" class="leftspace">&nbsp;</td>
		<td class="banner">&nbsp;</td>
		<td rowspan="2" class="formContainer">
			<div class="loginFormContainer">
				<form method="post">
					<div id="captionContainer">Sign in with <span class="company">Phi Orion</span> account</div>
					<div id="usernameContainer" onclick="document.getElementById('username').focus();">
						<input type="text" name="username" id="username" autocomplete="off"  />
					</div>
					<div id="passwordContainer" onclick="document.getElementById('password').focus();">
						<input type="password" name="password" id="password" autocomplete="off" />
					</div>
					<!--<div id="rememberContainer">
						<label for="remember">
							<input type="checkbox" name="remember" id="remember" value="1"/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
					</div>-->
					<div id="submitContainer">
						<input type="submit" name="submit" id="submit" value=" "/>
					</div>
					<div id="helpContainer">
						<a href="">Can't sign in to your account?</a>
					</div>
				</form>
			</div>
		</td>
	</tr>
	<tr>
		<td class="message">
			<?php echo $_smarty_tpl->tpl_vars['contents']->value;?>

		</td>
	</tr>
	<tr>
		<td colspan="3" class="copyright">
			<hr>
			<p>&copy;<?php echo $_smarty_tpl->tpl_vars['year']->value;?>
 Phi Orion</p>
		</td>
	</tr>
</table>
</div>
<script type="text/javascript" defer="defer">
(function(){
	if(document.getElementById('username')) document.getElementById('username').focus();
}());
</script>
</body>
</html><?php }} ?>