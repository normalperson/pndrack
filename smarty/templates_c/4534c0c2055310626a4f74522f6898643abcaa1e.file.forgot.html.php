<?php /* Smarty version Smarty-3.1.13, created on 2013-12-15 18:26:45
         compiled from "C:\Zend\Apache2\htdocs\pndrack\smarty\templates\forgot.html" */ ?>
<?php /*%%SmartyHeaderCode:2886052ad7aa4c862b0-77315065%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4534c0c2055310626a4f74522f6898643abcaa1e' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pndrack\\smarty\\templates\\forgot.html',
      1 => 1387103177,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2886052ad7aa4c862b0-77315065',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ad7aa4c99b37_60154092',
  'variables' => 
  array (
    'forgotMessage' => 0,
    'APP' => 0,
    'contents' => 0,
    'year' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ad7aa4c99b37_60154092')) {function content_52ad7aa4c99b37_60154092($_smarty_tpl) {?><!DOCTYPE html>
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
				<form method="post" id="forgotForm">
					<table id="forgotTable">
						<caption>Reset password</caption>
						<tr>
							<td class="captionContainer">Email</td>
							<td class="inputContainer"><input type="text" name="forgotemail" id="forgotemail" value=""/></td>
						</tr>
						<tr>
							<td colspan="2">
								<div id="submitContainerForgot">
									<input type="submit" name="forgotsubmit" id="forgotsubmit" value="Reset"/>
								</div>
							</td>
						</tr>
					</table>
					<div id="forgotMessage">
						<?php echo $_smarty_tpl->tpl_vars['forgotMessage']->value;?>

					</div>
					<div id="helpContainer">
						<a href="/<?php echo $_smarty_tpl->tpl_vars['APP']->value;?>
/login.php">Login</a>
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