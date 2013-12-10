<?php /* Smarty version Smarty-3.1.13, created on 2013-11-01 11:29:39
         compiled from "dbd0a7cdbe41e4e8ec601d1eb1e1faebdf2a8ac4" */ ?>
<?php /*%%SmartyHeaderCode:2527320237d6b10-91256210%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dbd0a7cdbe41e4e8ec601d1eb1e1faebdf2a8ac4' => 
    array (
      0 => 'dbd0a7cdbe41e4e8ec601d1eb1e1faebdf2a8ac4',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '2527320237d6b10-91256210',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'edit_cancel_html' => 0,
    'edit_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sg_groupname' => 0,
    'value_sg_groupname' => 0,
    'caption_sg_seq' => 0,
    'value_sg_seq' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52732023842710_24058140',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52732023842710_24058140')) {function content_52732023842710_24058140($_smarty_tpl) {?><fieldset><legend>Edit Record</legend><table class="dbo_edit" id="dbo_setup_shelfgroup_edittable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sg_groupname']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sg_groupname']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sg_seq']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sg_seq']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>