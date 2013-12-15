<?php /* Smarty version Smarty-3.1.13, created on 2013-12-15 11:02:17
         compiled from "271cdbe01c9c7a3ed76e0d627a200e048e5902a4" */ ?>
<?php /*%%SmartyHeaderCode:644552ad1bb929e436-98534486%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '271cdbe01c9c7a3ed76e0d627a200e048e5902a4' => 
    array (
      0 => '271cdbe01c9c7a3ed76e0d627a200e048e5902a4',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '644552ad1bb929e436-98534486',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_rol_code' => 0,
    'value_rol_code' => 0,
    'caption_rol_desc' => 0,
    'value_rol_desc' => 0,
    'caption_rol_status' => 0,
    'value_rol_status' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ad1bb92c7ac0_91869279',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ad1bb92c7ac0_91869279')) {function content_52ad1bb92c7ac0_91869279($_smarty_tpl) {?><fieldset><legend>Search Role</legend><table class="dbo_search" id="dbo_role_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_rol_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_rol_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_rol_desc']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_rol_desc']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_rol_status']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_rol_status']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>