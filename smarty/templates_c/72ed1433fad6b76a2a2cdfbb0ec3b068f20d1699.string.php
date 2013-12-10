<?php /* Smarty version Smarty-3.1.13, created on 2013-11-11 11:28:46
         compiled from "72ed1433fad6b76a2a2cdfbb0ec3b068f20d1699" */ ?>
<?php /*%%SmartyHeaderCode:551452804eee819992-36920439%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '72ed1433fad6b76a2a2cdfbb0ec3b068f20d1699' => 
    array (
      0 => '72ed1433fad6b76a2a2cdfbb0ec3b068f20d1699',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '551452804eee819992-36920439',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52804eee843b73_72876368',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52804eee843b73_72876368')) {function content_52804eee843b73_72876368($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_shelf_input_newtable">
	<?php if ($_smarty_tpl->tpl_vars['headerHTML']->value){?>
	<thead>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['headerHTML']->value;?>
</td>
		</tr>
	</thead>
	<?php }?>
	<tfoot>
		<tr>
			<td colspan="2" class="form_button"><?php echo $_smarty_tpl->tpl_vars['new_cancel_html']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['new_submit_html']->value;?>
</td>
		</tr>
		<?php if ($_smarty_tpl->tpl_vars['footerHTML']->value){?>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['footerHTML']->value;?>
</td>
		</tr>
		<?php }?>
	</tfoot><tbody><tr><th class="caption">&nbsp;</th><td class="value">&nbsp;</td></tr></tbody></table></fieldset><?php }} ?>