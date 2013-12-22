<?php /* Smarty version Smarty-3.1.13, created on 2013-12-22 22:02:02
         compiled from "ae77c5a3405e647242676a5536c84e67d1187e1e" */ ?>
<?php /*%%SmartyHeaderCode:3198152b6f0daa0dac4-16186079%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ae77c5a3405e647242676a5536c84e67d1187e1e' => 
    array (
      0 => 'ae77c5a3405e647242676a5536c84e67d1187e1e',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '3198152b6f0daa0dac4-16186079',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'edit_cancel_html' => 0,
    'edit_submit_html' => 0,
    'footerHTML' => 0,
    'caption_pk_description' => 0,
    'value_pk_description' => 0,
    'caption_pk_price' => 0,
    'value_pk_price' => 0,
    'caption_pk_minplate' => 0,
    'value_pk_minplate' => 0,
    'caption_pk_maxplate' => 0,
    'value_pk_maxplate' => 0,
    'caption_pk_maxuser' => 0,
    'value_pk_maxuser' => 0,
    'caption_pk_maxorg' => 0,
    'value_pk_maxorg' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b6f0daaa9ef6_86755449',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b6f0daaa9ef6_86755449')) {function content_52b6f0daaa9ef6_86755449($_smarty_tpl) {?><fieldset><legend>Edit Record</legend><table class="dbo_edit" id="dbo_packagesetup_edittable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pk_description']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pk_description']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pk_price']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pk_price']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pk_minplate']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pk_minplate']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pk_maxplate']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pk_maxplate']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pk_maxuser']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pk_maxuser']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pk_maxorg']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pk_maxorg']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>