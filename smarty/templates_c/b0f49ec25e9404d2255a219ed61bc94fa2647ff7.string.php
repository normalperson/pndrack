<?php /* Smarty version Smarty-3.1.13, created on 2013-12-22 16:27:05
         compiled from "b0f49ec25e9404d2255a219ed61bc94fa2647ff7" */ ?>
<?php /*%%SmartyHeaderCode:1326552b6a259bb1b09-25752102%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b0f49ec25e9404d2255a219ed61bc94fa2647ff7' => 
    array (
      0 => 'b0f49ec25e9404d2255a219ed61bc94fa2647ff7',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1326552b6a259bb1b09-25752102',
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
    'caption_pass1' => 0,
    'value_pass1' => 0,
    'caption_pass2' => 0,
    'value_pass2' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b6a259c694a1_06574847',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b6a259c694a1_06574847')) {function content_52b6a259c694a1_06574847($_smarty_tpl) {?><fieldset><legend>Edit Record</legend><table class="dbo_edit" id="dbo_profile_edittable">
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
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pass1']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pass1']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pass2']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pass2']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>