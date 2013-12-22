<?php /* Smarty version Smarty-3.1.13, created on 2013-12-22 16:29:42
         compiled from "f4ff5ec642820b11cb64fdb8d9d40c554f6c14b8" */ ?>
<?php /*%%SmartyHeaderCode:1793452b6a2f62c4526-54785809%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f4ff5ec642820b11cb64fdb8d9d40c554f6c14b8' => 
    array (
      0 => 'f4ff5ec642820b11cb64fdb8d9d40c554f6c14b8',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1793452b6a2f62c4526-54785809',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'edit_cancel_html' => 0,
    'edit_submit_html' => 0,
    'footerHTML' => 0,
    'caption_usr_name' => 0,
    'value_usr_name' => 0,
    'caption_usr_email' => 0,
    'value_usr_email' => 0,
    'caption_currpass' => 0,
    'value_currpass' => 0,
    'caption_pass1' => 0,
    'value_pass1' => 0,
    'caption_pass2' => 0,
    'value_pass2' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b6a2f6378058_43860640',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b6a2f6378058_43860640')) {function content_52b6a2f6378058_43860640($_smarty_tpl) {?><fieldset><legend>Edit Record</legend><table class="dbo_edit" id="dbo_profile_edittable">
	<?php if ($_smarty_tpl->tpl_vars['headerHTML']->value){?>
	<thead>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['headerHTML']->value;?>
</td>
		</tr>
	</thead>
	<?php }?>
	<tfoot><tr>
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_email']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_email']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_currpass']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_currpass']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pass1']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pass1']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pass2']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pass2']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>