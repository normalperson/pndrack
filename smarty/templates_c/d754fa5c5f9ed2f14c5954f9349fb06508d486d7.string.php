<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 09:57:55
         compiled from "d754fa5c5f9ed2f14c5954f9349fb06508d486d7" */ ?>
<?php /*%%SmartyHeaderCode:27139524e20a3a919d0-56930799%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd754fa5c5f9ed2f14c5954f9349fb06508d486d7' => 
    array (
      0 => 'd754fa5c5f9ed2f14c5954f9349fb06508d486d7',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '27139524e20a3a919d0-56930799',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'edit_cancel_html' => 0,
    'edit_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hrt_code' => 0,
    'value_hrt_code' => 0,
    'caption_hrt_desc' => 0,
    'value_hrt_desc' => 0,
    'caption_hrt_defaultrate' => 0,
    'value_hrt_defaultrate' => 0,
    'caption_hrt_holidayrate' => 0,
    'value_hrt_holidayrate' => 0,
    'caption_hrt_seq' => 0,
    'value_hrt_seq' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e20a3adf8b5_25191972',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e20a3adf8b5_25191972')) {function content_524e20a3adf8b5_25191972($_smarty_tpl) {?><fieldset><legend>Edit Record</legend><table class="dbo_edit" id="dbo_setup_roomtype_edittable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrt_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrt_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrt_desc']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrt_desc']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrt_defaultrate']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrt_defaultrate']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrt_holidayrate']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrt_holidayrate']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrt_seq']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrt_seq']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>