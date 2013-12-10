<?php /* Smarty version Smarty-3.1.13, created on 2013-11-06 15:03:55
         compiled from "C:\Zend\Apache2\fcore\inc\Translate\templates\translate_advance.html" */ ?>
<?php /*%%SmartyHeaderCode:244075279e9db40d439-24663468%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8e755dbbdc38fa72fb2fe9dd2058cdb9b2f2f764' => 
    array (
      0 => 'C:\\Zend\\Apache2\\fcore\\inc\\Translate\\templates\\translate_advance.html',
      1 => 1383637787,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '244075279e9db40d439-24663468',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'langfiles' => 0,
    'language' => 0,
    'langfile' => 0,
    'file' => 0,
    'langlist' => 0,
    'langcat' => 0,
    'langrow' => 0,
    'lang' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5279e9db4613e4_12542669',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5279e9db4613e4_12542669')) {function content_5279e9db4613e4_12542669($_smarty_tpl) {?><table width=80% align=center>
	<tr>
		<td>
			<form target='translateSheetFrame' method='post' action='translateSheet'>
				<fieldset>
					<legend>Advance Translate</legend>
						<table style='margin-left:100px'>
							<tr>
								<td style='padding-right:20px'>
									<label class="radio" for='load_type_existing' >
										<input type='radio' name='load_type' id='load_type_existing' value='EXIST' />
										<b>Load from existing Language File</b>
									</label>
								</td>
								<td>
									<select name='load_file' id='load_file' disabled>
										<option></option>
<?php  $_smarty_tpl->tpl_vars["langfile"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["langfile"]->_loop = false;
 $_smarty_tpl->tpl_vars["language"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['langfiles']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["langfile"]->key => $_smarty_tpl->tpl_vars["langfile"]->value){
$_smarty_tpl->tpl_vars["langfile"]->_loop = true;
 $_smarty_tpl->tpl_vars["language"]->value = $_smarty_tpl->tpl_vars["langfile"]->key;
?>
										<optgroup label="<?php echo $_smarty_tpl->tpl_vars['language']->value;?>
">
	<?php  $_smarty_tpl->tpl_vars["file"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["file"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['langfile']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["file"]->key => $_smarty_tpl->tpl_vars["file"]->value){
$_smarty_tpl->tpl_vars["file"]->_loop = true;
?>
											<option data-lang="<?php echo $_smarty_tpl->tpl_vars['file']->value['lang_file_lang'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['file']->value['lang_file'];?>
"><?php echo $_smarty_tpl->tpl_vars['file']->value['lang_file'];?>
</option>
	<?php } ?>
										</optgroup>
<?php } ?>
									</select>

								</td>
								<td rowspan=2 style='padding-left:50px'>
									<select name='load_translate[]' id='load_translate' multiple size=6 class='span4'>
<?php  $_smarty_tpl->tpl_vars["langrow"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["langrow"]->_loop = false;
 $_smarty_tpl->tpl_vars["langcat"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['langlist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["langrow"]->key => $_smarty_tpl->tpl_vars["langrow"]->value){
$_smarty_tpl->tpl_vars["langrow"]->_loop = true;
 $_smarty_tpl->tpl_vars["langcat"]->value = $_smarty_tpl->tpl_vars["langrow"]->key;
?>
										<optgroup label="<?php echo $_smarty_tpl->tpl_vars['langcat']->value;?>
">
	<?php  $_smarty_tpl->tpl_vars["lang"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["lang"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['langrow']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["lang"]->key => $_smarty_tpl->tpl_vars["lang"]->value){
$_smarty_tpl->tpl_vars["lang"]->_loop = true;
?>
											<option value="<?php echo $_smarty_tpl->tpl_vars['lang']->value['langCode'];?>
"><?php echo $_smarty_tpl->tpl_vars['lang']->value['langName'];?>
 (<?php echo $_smarty_tpl->tpl_vars['lang']->value['langCode'];?>
)</option>
	<?php } ?>
										</optgroup>
<?php } ?>								
									</select>
									<h6><strong>Note: Click on ctrl to select multiple language</strong></h4>
								</td>
								<td rowspan=2 style='padding-left:50px'>
									<input type='submit' style='margin:5px' class="btn btn-primary btn-large" name="load_submit" value="Start Translate" />
									<input type='submit' style='margin:5px' class="btn btn-large" name="load_cancel" value="Discard" />
								</td>
							</tr>
							<tr>
								<td>
									<label class="radio" for='load_type_new' >
										<input type='radio' name='load_type' id='load_type_new' value='NEW' />
										<b>Create new Language File</b>
									</label>
								</td>
								<td>
									<input type='text' disabled name='load_name' id='load_name' placeholder='New Language File Name' />
								</td>
							</tr>
						</table>
				</fieldset>
			</form>
		</td>
	</tr>
	<tr>
		<td style='height:700px'>
			<iframe id='translateSheetFrame' name='translateSheetFrame' width=100% height=100% src='translateSheet' ></iframe>
		</td>
	</tr>
</table>
<script type="text/javascript">
$(function() {

	var lastValidSelection = null;
	var $loadFile = $('#load_file');
	var $loadName = $('#load_name');
	var $loadLang = $('#load_translate');
	var currFileLang = false;
	
	$loadLang.change(function(event) {
		var $this = $(this);
		var currVal = $this.val();
		if (currVal != null && currVal.length > 5) {
			alert('You can only choose up to 5 at a time!');
			$this.val(lastValidSelection);
		}
		else if (currFileLang && $.inArray(currFileLang,currVal) == -1) {
			$this.val(lastValidSelection);
		}
		else {
			lastValidSelection = currVal;
		}
	});
	
	$('input[name=load_type]').click(function () {
		currFileLang = false;
		if (this.value == 'EXIST') {
			$loadName.val('').attr('disabled',true);
			$loadFile.val('').attr('disabled',false);
		}
		else if (this.value == 'NEW') {
			$loadName.val('').attr('disabled',false);
			$loadFile.val('').attr('disabled',true);
		}
	})
	
	$loadFile.change(function () {
		var fileLang = $(this).find(":selected").attr('data-lang');
		if (fileLang) currFileLang = fileLang;
		else currFileLang = false;
		$loadLang.val(fileLang);
		lastValidSelection = $loadLang.val();
	})
});
</script>
<?php }} ?>