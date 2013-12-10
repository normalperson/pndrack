<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 10:04:37
         compiled from "f06c6d79a328961c09523f6512dedab985d1fdf2" */ ?>
<?php /*%%SmartyHeaderCode:19316524e2235e46eb7-98784543%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f06c6d79a328961c09523f6512dedab985d1fdf2' => 
    array (
      0 => 'f06c6d79a328961c09523f6512dedab985d1fdf2',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '19316524e2235e46eb7-98784543',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hh_holidaystart' => 0,
    'value_hh_holidaystart' => 0,
    'caption_hh_holidayend' => 0,
    'value_hh_holidayend' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e2235e88217_95505667',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e2235e88217_95505667')) {function content_524e2235e88217_95505667($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_publicholiday_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hh_holidaystart']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hh_holidaystart']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hh_holidayend']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hh_holidayend']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>