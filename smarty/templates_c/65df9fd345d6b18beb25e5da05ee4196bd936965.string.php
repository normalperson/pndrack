<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 10:02:00
         compiled from "65df9fd345d6b18beb25e5da05ee4196bd936965" */ ?>
<?php /*%%SmartyHeaderCode:13854524e219894d4a5-63074944%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '65df9fd345d6b18beb25e5da05ee4196bd936965' => 
    array (
      0 => '65df9fd345d6b18beb25e5da05ee4196bd936965',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '13854524e219894d4a5-63074944',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hdh_minhour' => 0,
    'value_hdh_minhour' => 0,
    'caption_hdh_maxhour' => 0,
    'value_hdh_maxhour' => 0,
    'caption_hdh_rate' => 0,
    'value_hdh_rate' => 0,
    'caption_hdh_hrtid' => 0,
    'value_hdh_hrtid' => 0,
    'caption_hdh_daytype' => 0,
    'value_hdh_daytype' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e21989b18c3_35179388',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e21989b18c3_35179388')) {function content_524e21989b18c3_35179388($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_durationchargebyhour_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdh_minhour']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdh_minhour']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdh_maxhour']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdh_maxhour']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdh_rate']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdh_rate']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdh_hrtid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdh_hrtid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdh_daytype']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdh_daytype']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>