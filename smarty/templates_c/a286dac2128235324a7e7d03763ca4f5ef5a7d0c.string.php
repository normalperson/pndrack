<?php /* Smarty version Smarty-3.1.13, created on 2013-12-12 20:36:31
         compiled from "a286dac2128235324a7e7d03763ca4f5ef5a7d0c" */ ?>
<?php /*%%SmartyHeaderCode:2454152a9adcf07ebd5-69969831%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a286dac2128235324a7e7d03763ca4f5ef5a7d0c' => 
    array (
      0 => 'a286dac2128235324a7e7d03763ca4f5ef5a7d0c',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '2454152a9adcf07ebd5-69969831',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_usr_userid' => 0,
    'value_usr_userid' => 0,
    'caption_usr_password' => 0,
    'value_usr_password' => 0,
    'caption_usr_created' => 0,
    'value_usr_created' => 0,
    'caption_usr_name' => 0,
    'value_usr_name' => 0,
    'caption_usr_email' => 0,
    'value_usr_email' => 0,
    'caption_usr_last_active' => 0,
    'value_usr_last_active' => 0,
    'caption_usr_last_success_login' => 0,
    'value_usr_last_success_login' => 0,
    'caption_usr_last_fail_login' => 0,
    'value_usr_last_fail_login' => 0,
    'caption_usr_group' => 0,
    'value_usr_group' => 0,
    'caption_usr_sessiondata' => 0,
    'value_usr_sessiondata' => 0,
    'caption_usr_langid' => 0,
    'value_usr_langid' => 0,
    'caption_usr_status' => 0,
    'value_usr_status' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52a9adcf5d9e94_02726916',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52a9adcf5d9e94_02726916')) {function content_52a9adcf5d9e94_02726916($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_superman_searchtable">
	<?php if ($_smarty_tpl->tpl_vars['headerHTML']->value){?>
	<thead>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['headerHTML']->value;?>
</td>
		</tr>
	</thead>
	<?php }?>
	<tfoot><tr>
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_userid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_userid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_password']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_password']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_created']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_created']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_email']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_email']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_last_active']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_last_active']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_last_success_login']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_last_success_login']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_last_fail_login']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_last_fail_login']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_group']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_group']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_sessiondata']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_sessiondata']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_langid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_langid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_status']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_status']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>