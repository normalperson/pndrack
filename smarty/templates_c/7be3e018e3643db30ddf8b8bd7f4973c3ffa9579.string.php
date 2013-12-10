<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 09:57:50
         compiled from "7be3e018e3643db30ddf8b8bd7f4973c3ffa9579" */ ?>
<?php /*%%SmartyHeaderCode:21456524e209eb7ab68-33147684%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7be3e018e3643db30ddf8b8bd7f4973c3ffa9579' => 
    array (
      0 => '7be3e018e3643db30ddf8b8bd7f4973c3ffa9579',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '21456524e209eb7ab68-33147684',
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
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e209ebc8783_55763802',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e209ebc8783_55763802')) {function content_524e209ebc8783_55763802($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_roomtype_newtable">
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
</td></tr></tbody></table></fieldset><?php }} ?>