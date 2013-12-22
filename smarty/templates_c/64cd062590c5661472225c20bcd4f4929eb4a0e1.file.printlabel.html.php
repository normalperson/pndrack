<?php /* Smarty version Smarty-3.1.13, created on 2013-12-20 20:10:53
         compiled from "C:\Zend\Apache2\htdocs\pndrack\smarty\templates\printlabel.html" */ ?>
<?php /*%%SmartyHeaderCode:1188052b3fc320d2f08-17252199%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '64cd062590c5661472225c20bcd4f4929eb4a0e1' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pndrack\\smarty\\templates\\printlabel.html',
      1 => 1387541448,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1188052b3fc320d2f08-17252199',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b3fc3210fbf5_36945385',
  'variables' => 
  array (
    'shelfinfo' => 0,
    'si' => 0,
    'i' => 0,
    'slinfo' => 0,
    'shelfslot' => 0,
    'sl' => 0,
    'sldet' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b3fc3210fbf5_36945385')) {function content_52b3fc3210fbf5_36945385($_smarty_tpl) {?><html>
<head>
  <title>Print Label</title>
</head>
<body>
<?php  $_smarty_tpl->tpl_vars["si"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["si"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['shelfinfo']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["si"]->key => $_smarty_tpl->tpl_vars["si"]->value){
$_smarty_tpl->tpl_vars["si"]->_loop = true;
?>  
  <table class="table table-bordered">
    <caption style="background-color:black;color:white;font-weight:bold">Shelf: <?php echo $_smarty_tpl->tpl_vars['si']->value['sf_desc'];?>
</caption>
    <tbody>
    <tr>
      <?php $_smarty_tpl->tpl_vars["i"] = new Smarty_variable(0, null, 0);?>
      <?php  $_smarty_tpl->tpl_vars["slinfo"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["slinfo"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['si']->value['slotinfo']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["slinfo"]->key => $_smarty_tpl->tpl_vars["slinfo"]->value){
$_smarty_tpl->tpl_vars["slinfo"]->_loop = true;
?>
        <?php if ($_smarty_tpl->tpl_vars['i']->value%7==0){?>
        </tr><tr>
        <?php }?>
        <td>
          <?php echo $_smarty_tpl->tpl_vars['slinfo']->value['ps_code'];?>

        </td>      
        <?php $_smarty_tpl->tpl_vars["i"] = new Smarty_variable($_smarty_tpl->tpl_vars['i']->value+1, null, 0);?>
      <?php } ?>
    </tr>
    </tbody>
  </table>
<?php } ?> <!-- end of from=$shelfinfo  -->


<!-- <?php  $_smarty_tpl->tpl_vars["sl"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["sl"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['shelfslot']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["sl"]->key => $_smarty_tpl->tpl_vars["sl"]->value){
$_smarty_tpl->tpl_vars["sl"]->_loop = true;
?>
    <?php  $_smarty_tpl->tpl_vars["sldet"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["sldet"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['sl']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["sldet"]->key => $_smarty_tpl->tpl_vars["sldet"]->value){
$_smarty_tpl->tpl_vars["sldet"]->_loop = true;
?>
      <?php if ($_smarty_tpl->tpl_vars['si']->value['sf_id']==$_smarty_tpl->tpl_vars['sldet']->value['ps_sfid']){?>
      <table class="table table-bordered">
        <tr>
          <?php $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['i']->step = 1;$_smarty_tpl->tpl_vars['i']->total = (int)ceil(($_smarty_tpl->tpl_vars['i']->step > 0 ? 10+1 - (1) : 1-(10)+1)/abs($_smarty_tpl->tpl_vars['i']->step));
if ($_smarty_tpl->tpl_vars['i']->total > 0){
for ($_smarty_tpl->tpl_vars['i']->value = 1, $_smarty_tpl->tpl_vars['i']->iteration = 1;$_smarty_tpl->tpl_vars['i']->iteration <= $_smarty_tpl->tpl_vars['i']->total;$_smarty_tpl->tpl_vars['i']->value += $_smarty_tpl->tpl_vars['i']->step, $_smarty_tpl->tpl_vars['i']->iteration++){
$_smarty_tpl->tpl_vars['i']->first = $_smarty_tpl->tpl_vars['i']->iteration == 1;$_smarty_tpl->tpl_vars['i']->last = $_smarty_tpl->tpl_vars['i']->iteration == $_smarty_tpl->tpl_vars['i']->total;?>
            <td><?php echo $_smarty_tpl->tpl_vars['sldet']->value['ps_code'];?>
</td>
          <?php }} ?>
        </tr>
      </table>
      <?php }?>
    <?php } ?>
  <?php } ?> -->

</body>
</html><?php }} ?>