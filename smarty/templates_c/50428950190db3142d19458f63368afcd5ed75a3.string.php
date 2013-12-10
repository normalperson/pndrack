<?php /* Smarty version Smarty-3.1.13, created on 2013-11-13 10:43:48
         compiled from "50428950190db3142d19458f63368afcd5ed75a3" */ ?>
<?php /*%%SmartyHeaderCode:132595282e764181ca7-56598277%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '50428950190db3142d19458f63368afcd5ed75a3' => 
    array (
      0 => '50428950190db3142d19458f63368afcd5ed75a3',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '132595282e764181ca7-56598277',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'edit_cancel_html' => 0,
    'edit_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sf_sgid' => 0,
    'value_sf_sgid' => 0,
    'caption_sf_code' => 0,
    'value_sf_code' => 0,
    'caption_sf_desc' => 0,
    'value_sf_desc' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5282e7641a9c06_91540228',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5282e7641a9c06_91540228')) {function content_5282e7641a9c06_91540228($_smarty_tpl) {?><fieldset><legend>Edit Record</legend><table class="dbo_edit" id="dbo_setup_shelf_edittable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_sgid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_sgid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_desc']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_desc']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>