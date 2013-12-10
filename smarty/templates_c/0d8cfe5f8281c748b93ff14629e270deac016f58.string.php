<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 10:02:29
         compiled from "0d8cfe5f8281c748b93ff14629e270deac016f58" */ ?>
<?php /*%%SmartyHeaderCode:8925524e21b5710de4-15852711%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0d8cfe5f8281c748b93ff14629e270deac016f58' => 
    array (
      0 => '0d8cfe5f8281c748b93ff14629e270deac016f58',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '8925524e21b5710de4-15852711',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hdn_hrtid' => 0,
    'value_hdn_hrtid' => 0,
    'caption_hdn_daytype' => 0,
    'value_hdn_daytype' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e21b57508c0_61595026',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e21b57508c0_61595026')) {function content_524e21b57508c0_61595026($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_durationchargebynight_searchtable">
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
			<td colspan="2" class="form_button"><?php echo $_smarty_tpl->tpl_vars['search_cancel_html']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['search_submit_html']->value;?>
</td>
		</tr>
		<?php if ($_smarty_tpl->tpl_vars['footerHTML']->value){?>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['footerHTML']->value;?>
</td>
		</tr>
		<?php }?>
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdn_hrtid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdn_hrtid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdn_daytype']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdn_daytype']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>