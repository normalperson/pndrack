<?php /* Smarty version Smarty-3.1.13, created on 2013-12-22 15:15:49
         compiled from "9482c8dcb25b9284daf49b3eaab1b7abc66a7619" */ ?>
<?php /*%%SmartyHeaderCode:1052052b691a5189a40-92918545%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9482c8dcb25b9284daf49b3eaab1b7abc66a7619' => 
    array (
      0 => '9482c8dcb25b9284daf49b3eaab1b7abc66a7619',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1052052b691a5189a40-92918545',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'edit_cancel_html' => 0,
    'edit_submit_html' => 0,
    'footerHTML' => 0,
    'caption_cus_name' => 0,
    'value_cus_name' => 0,
    'caption_cus_regno' => 0,
    'value_cus_regno' => 0,
    'caption_cus_masterid' => 0,
    'value_cus_masterid' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b691a51accd3_51247081',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b691a51accd3_51247081')) {function content_52b691a51accd3_51247081($_smarty_tpl) {?><fieldset><legend>Edit Record</legend><table class="dbo_edit" id="dbo_setup_customer_edittable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_cus_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_cus_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_cus_regno']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_cus_regno']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_cus_masterid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_cus_masterid']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>