<?php /* Smarty version Smarty-3.1.13, created on 2013-11-09 15:54:51
         compiled from "C:\Zend\Apache2\fcore\inc\Translate\templates\translate_sheet.html" */ ?>
<?php /*%%SmartyHeaderCode:178985279e9dbb14ef3-20391159%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '766e4cf1a3ab0eed15d0ed8861223aa1dd58015d' => 
    array (
      0 => 'C:\\Zend\\Apache2\\fcore\\inc\\Translate\\templates\\translate_sheet.html',
      1 => 1383983688,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '178985279e9dbb14ef3-20391159',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5279e9dbbf1976_80377714',
  'variables' => 
  array (
    'message' => 0,
    'messagecat' => 0,
    'dotranslate' => 0,
    'colspan' => 0,
    'translatefile' => 0,
    'translatelang' => 0,
    'langdesc' => 0,
    'lang' => 0,
    'translatedata' => 0,
    'code' => 0,
    'data' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5279e9dbbf1976_80377714')) {function content_5279e9dbbf1976_80377714($_smarty_tpl) {?><table width=100% align=center>
<?php if ($_smarty_tpl->tpl_vars['message']->value){?>
	<tr>
		<td align=center>
			<div class='alert <?php echo $_smarty_tpl->tpl_vars['messagecat']->value;?>
' style='width:60%;margin:20px'><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</div>
		</td>	
	</tr>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['dotranslate']->value){?>
	<tr>
		<td align=center>
			<form method='post'>
				<table id="translate-table" class="table table-bordered">
					<tr class="info">
						<td colspan=<?php echo $_smarty_tpl->tpl_vars['colspan']->value;?>
 style='font-weight:bold'>
							<div class="control-group form-horizontal">
								<label class="control-label" for="translate_file"><b>Translate File</b></label>
								<div class="controls">
									<input type='text' id="translate_file" name="translate_file" value="<?php echo $_smarty_tpl->tpl_vars['translatefile']->value;?>
" />
								</div>
							</div>
						</td>
					</tr>	
					<tr class="title-row">
						<th>Code</th>
<?php  $_smarty_tpl->tpl_vars['langdesc'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['langdesc']->_loop = false;
 $_smarty_tpl->tpl_vars['lang'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['translatelang']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['langdesc']->key => $_smarty_tpl->tpl_vars['langdesc']->value){
$_smarty_tpl->tpl_vars['langdesc']->_loop = true;
 $_smarty_tpl->tpl_vars['lang']->value = $_smarty_tpl->tpl_vars['langdesc']->key;
?>
						<th><?php echo $_smarty_tpl->tpl_vars['langdesc']->value;?>
 (<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
)<input type='hidden' name='translate_lang[]' value="<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
" /></th>
<?php } ?>
						<th></th>
					</tr>
<?php  $_smarty_tpl->tpl_vars['data'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['data']->_loop = false;
 $_smarty_tpl->tpl_vars['code'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['translatedata']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['data']->key => $_smarty_tpl->tpl_vars['data']->value){
$_smarty_tpl->tpl_vars['data']->_loop = true;
 $_smarty_tpl->tpl_vars['code']->value = $_smarty_tpl->tpl_vars['data']->key;
?>
					<tr class="translate-row">
						<td class="td-key"><input type='text' class="input-block-level courier" name='translate_key[]' value="<?php echo $_smarty_tpl->tpl_vars['code']->value;?>
" /></td>
	<?php  $_smarty_tpl->tpl_vars['langdesc'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['langdesc']->_loop = false;
 $_smarty_tpl->tpl_vars['lang'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['translatelang']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['langdesc']->key => $_smarty_tpl->tpl_vars['langdesc']->value){
$_smarty_tpl->tpl_vars['langdesc']->_loop = true;
 $_smarty_tpl->tpl_vars['lang']->value = $_smarty_tpl->tpl_vars['langdesc']->key;
?>
						<td><input type="text" name="translate_text[<?php echo array_search($_smarty_tpl->tpl_vars['lang']->value,array_keys($_smarty_tpl->tpl_vars['translatelang']->value));?>
][<?php echo array_search($_smarty_tpl->tpl_vars['code']->value,array_keys($_smarty_tpl->tpl_vars['translatedata']->value));?>
]" class="input-block-level" value="<?php if (isset($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['lang']->value])){?><?php echo $_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['lang']->value];?>
<?php }?>" /></td>
	<?php } ?>
						<td><i class="icon-trash delete-row"></i></td>
					</tr>
<?php } ?>		
					<tfoot>
						<tr><td colspan=<?php echo $_smarty_tpl->tpl_vars['colspan']->value;?>
 style='text-align:center'><i class='icon-arrow-down add-row'></i></td></tr>
					</tfoot>
				</table>
				<input type='submit' style='margin:5px' class="btn btn-primary btn-large" name="translate_submit" value="Save" />
				<input type='submit' style='margin:5px' class="btn btn-large" name="translate_cancel" value="Discard" />
			</form>
			<table id="template-translate-table" style='display:none'>
				<tr class="translate-row">
					<td class="td-key"><input type='text' class="input-block-level courier" name='translate_key[]' value="" /></td>
<?php  $_smarty_tpl->tpl_vars['langdesc'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['langdesc']->_loop = false;
 $_smarty_tpl->tpl_vars['lang'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['translatelang']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['langdesc']->key => $_smarty_tpl->tpl_vars['langdesc']->value){
$_smarty_tpl->tpl_vars['langdesc']->_loop = true;
 $_smarty_tpl->tpl_vars['lang']->value = $_smarty_tpl->tpl_vars['langdesc']->key;
?>
					<td><input type="text" name="translate_text[<?php echo array_search($_smarty_tpl->tpl_vars['lang']->value,array_keys($_smarty_tpl->tpl_vars['translatelang']->value));?>
][]" class="input-block-level" value="" /></td>
<?php } ?>
					<td><i class="icon-trash delete-row"></i></td>
				</tr>
			</table>
		</td>
	</tr>
<?php }?>
</table>
<style type='text/css'>
.td-key {
	background-color: #fcf8e3;
}
.courier {
	font-family: courier;
	font-weight: bold;
}
tr.title-row > th {
	background-color: #dff0d8;
}
.delete-row , .add-row {
	cursor : pointer;
}
</style>
<script type='text/javascript'>
$(function () {
	
	var $tlTab = $('table#translate-table');
	var $templateRow = $('table#template-translate-table tr.translate-row');
	
	function tagInputNameIndex () {
		$('tr.translate-row').each (function (i) {
			$(this).find('input[name^=translate_text]').each (function (j) {
				this.name = "translate_text["+j+"]["+i+"]";
			})
		})
	}
	
	$(document).on( 'click', '.delete-row', function(){
		var $row = $(this).parents('tr.translate-row');
		$row.remove();
		tagInputNameIndex();	
	})
	
	
	$('.add-row').click(function () {
		$tlTab.append($templateRow.clone());
		tagInputNameIndex();
	})
	
})
</script><?php }} ?>