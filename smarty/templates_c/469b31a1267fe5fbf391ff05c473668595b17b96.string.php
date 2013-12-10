<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 18:53:52
         compiled from "469b31a1267fe5fbf391ff05c473668595b17b96" */ ?>
<?php /*%%SmartyHeaderCode:24706524e9e4082d2f1-34794845%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '469b31a1267fe5fbf391ff05c473668595b17b96' => 
    array (
      0 => '469b31a1267fe5fbf391ff05c473668595b17b96',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '24706524e9e4082d2f1-34794845',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
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
    'caption_gender' => 0,
    'value_gender' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e9e4088c9b1_41492651',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e9e4088c9b1_41492651')) {function content_524e9e4088c9b1_41492651($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_roomtype_newtable">
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
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_gender']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_gender']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>