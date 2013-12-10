<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 10:03:12
         compiled from "eb03226464e3a290e4ef958ce574972395808247" */ ?>
<?php /*%%SmartyHeaderCode:19755524e21e014e299-14090594%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eb03226464e3a290e4ef958ce574972395808247' => 
    array (
      0 => 'eb03226464e3a290e4ef958ce574972395808247',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '19755524e21e014e299-14090594',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hdn_instarttime' => 0,
    'value_hdn_instarttime' => 0,
    'caption_hdn_inendtime' => 0,
    'value_hdn_inendtime' => 0,
    'caption_hdn_hrtid' => 0,
    'value_hdn_hrtid' => 0,
    'caption_hdn_daytype' => 0,
    'value_hdn_daytype' => 0,
    'caption_hdn_rate' => 0,
    'value_hdn_rate' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e21e019ec39_81937357',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e21e019ec39_81937357')) {function content_524e21e019ec39_81937357($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_durationchargebynight_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdn_instarttime']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdn_instarttime']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdn_inendtime']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdn_inendtime']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdn_hrtid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdn_hrtid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdn_daytype']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdn_daytype']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdn_rate']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdn_rate']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>