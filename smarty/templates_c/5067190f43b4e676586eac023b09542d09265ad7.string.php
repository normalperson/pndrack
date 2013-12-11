<?php /* Smarty version Smarty-3.1.13, created on 2013-12-10 20:09:01
         compiled from "5067190f43b4e676586eac023b09542d09265ad7" */ ?>
<?php /*%%SmartyHeaderCode:3215152a7045d06c444-77848680%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5067190f43b4e676586eac023b09542d09265ad7' => 
    array (
      0 => '5067190f43b4e676586eac023b09542d09265ad7',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '3215152a7045d06c444-77848680',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sf_sgid' => 0,
    'value_sf_sgid' => 0,
    'caption_sf_code' => 0,
    'value_sf_code' => 0,
    'caption_sf_desc' => 0,
    'value_sf_desc' => 0,
    'caption_sf_totalplate' => 0,
    'value_sf_totalplate' => 0,
    'caption_sf_seq' => 0,
    'value_sf_seq' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52a7045d0b6832_58191214',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52a7045d0b6832_58191214')) {function content_52a7045d0b6832_58191214($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_shelf_newtable">
	<?php if ($_smarty_tpl->tpl_vars['headerHTML']->value){?>
	<thead>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['headerHTML']->value;?>
</td>
		</tr>
	</thead>
	<?php }?>
	<tfoot><tr>
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_sgid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_sgid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_desc']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_desc']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_totalplate']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_totalplate']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_seq']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_seq']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>