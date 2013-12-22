<?php /* Smarty version Smarty-3.1.13, created on 2013-12-19 15:40:38
         compiled from "bb0732b199bc7b502ef0e2f746f7fd35f8c63823" */ ?>
<?php /*%%SmartyHeaderCode:1612952b2a2f643cf97-24764976%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bb0732b199bc7b502ef0e2f746f7fd35f8c63823' => 
    array (
      0 => 'bb0732b199bc7b502ef0e2f746f7fd35f8c63823',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1612952b2a2f643cf97-24764976',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_cus_masterid' => 0,
    'value_cus_masterid' => 0,
    'caption_cus_name' => 0,
    'value_cus_name' => 0,
    'caption_sp_platename' => 0,
    'value_sp_platename' => 0,
    'caption_sp_platemodel' => 0,
    'value_sp_platemodel' => 0,
    'caption_ps_code' => 0,
    'value_ps_code' => 0,
    'caption_sf_id' => 0,
    'value_sf_id' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b2a2f65084b8_89947998',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b2a2f65084b8_89947998')) {function content_52b2a2f65084b8_89947998($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_platelist_searchtable">
	<?php if ($_smarty_tpl->tpl_vars['headerHTML']->value){?>
	<thead>
		<tr>
			<td colspan="4"><?php echo $_smarty_tpl->tpl_vars['headerHTML']->value;?>
</td>
		</tr>
	</thead>
	<?php }?>
	<tfoot><tr>
			<td colspan="4" class="form_button"><?php echo $_smarty_tpl->tpl_vars['search_cancel_html']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['search_submit_html']->value;?>
</td>
		</tr>
		<?php if ($_smarty_tpl->tpl_vars['footerHTML']->value){?>
		<tr>
			<td colspan="4"><?php echo $_smarty_tpl->tpl_vars['footerHTML']->value;?>
</td>
		</tr>
		<?php }?>
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_cus_masterid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_cus_masterid']->value;?>
</td><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_cus_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_cus_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sp_platename']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sp_platename']->value;?>
</td><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sp_platemodel']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sp_platemodel']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_ps_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_ps_code']->value;?>
</td><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_id']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_id']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>