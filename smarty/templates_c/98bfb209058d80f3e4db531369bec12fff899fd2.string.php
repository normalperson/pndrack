<?php /* Smarty version Smarty-3.1.13, created on 2013-11-01 11:30:04
         compiled from "98bfb209058d80f3e4db531369bec12fff899fd2" */ ?>
<?php /*%%SmartyHeaderCode:255545273203c26d717-42283970%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '98bfb209058d80f3e4db531369bec12fff899fd2' => 
    array (
      0 => '98bfb209058d80f3e4db531369bec12fff899fd2',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '255545273203c26d717-42283970',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'edit_cancel_html' => 0,
    'edit_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sf_name' => 0,
    'value_sf_name' => 0,
    'caption_sf_row' => 0,
    'value_sf_row' => 0,
    'caption_sf_col' => 0,
    'value_sf_col' => 0,
    'caption_sf_group' => 0,
    'value_sf_group' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5273203c2e5000_28958856',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5273203c2e5000_28958856')) {function content_5273203c2e5000_28958856($_smarty_tpl) {?><fieldset><legend>Edit Record</legend><table class="dbo_edit" id="dbo_setup_shelf_edittable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_row']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_row']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_col']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_col']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_group']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_group']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>