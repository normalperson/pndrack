<?php /* Smarty version Smarty-3.1.13, created on 2013-11-01 11:24:45
         compiled from "a82b5ad58551f54d55cc0716a0f41678397b330f" */ ?>
<?php /*%%SmartyHeaderCode:213952731efd0ca0f9-91154930%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a82b5ad58551f54d55cc0716a0f41678397b330f' => 
    array (
      0 => 'a82b5ad58551f54d55cc0716a0f41678397b330f',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '213952731efd0ca0f9-91154930',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
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
  'unifunc' => 'content_52731efd143992_42600254',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52731efd143992_42600254')) {function content_52731efd143992_42600254($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_shelf_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_row']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_row']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_col']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_col']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_group']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_group']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>