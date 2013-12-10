<?php /* Smarty version Smarty-3.1.13, created on 2013-11-15 21:43:52
         compiled from "217b5602d699ab39a6296398c6f4da823579751e" */ ?>
<?php /*%%SmartyHeaderCode:1378528625186a5986-20177438%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '217b5602d699ab39a6296398c6f4da823579751e' => 
    array (
      0 => '217b5602d699ab39a6296398c6f4da823579751e',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1378528625186a5986-20177438',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'edit_cancel_html' => 0,
    'edit_submit_html' => 0,
    'footerHTML' => 0,
    'caption_d_name' => 0,
    'value_d_name' => 0,
    'caption_d_gender' => 0,
    'value_d_gender' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_528625186cf364_99048341',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_528625186cf364_99048341')) {function content_528625186cf364_99048341($_smarty_tpl) {?><fieldset><legend>Edit Record</legend><table class="dbo_edit" id="dbo_daniel_edittable">
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
			<td colspan="2" class="form_button"><?php echo $_smarty_tpl->tpl_vars['edit_cancel_html']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['edit_submit_html']->value;?>
</td>
		</tr>
		<?php if ($_smarty_tpl->tpl_vars['footerHTML']->value){?>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['footerHTML']->value;?>
</td>
		</tr>
		<?php }?>
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_d_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_d_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_d_gender']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_d_gender']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>