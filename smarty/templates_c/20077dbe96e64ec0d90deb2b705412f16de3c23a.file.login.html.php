<?php /* Smarty version Smarty-3.1.13, created on 2013-10-31 14:36:25
         compiled from "C:\Zend\Apache2\htdocs\pflexdemo\smarty\templates\login.html" */ ?>
<?php /*%%SmartyHeaderCode:109555271fa69bfdcd0-18147461%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '20077dbe96e64ec0d90deb2b705412f16de3c23a' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pflexdemo\\smarty\\templates\\login.html',
      1 => 1379384214,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '109555271fa69bfdcd0-18147461',
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
  'unifunc' => 'content_5271fa6a773a98_05256197',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5271fa6a773a98_05256197')) {function content_5271fa6a773a98_05256197($_smarty_tpl) {?><!DOCTYPE html>
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