<?php /* Smarty version Smarty-3.1.13, created on 2013-10-26 14:56:58
         compiled from "C:\Zend\Apache2\htdocs\newapp\smarty\templates\installDB.html" */ ?>
<?php /*%%SmartyHeaderCode:5079526b32173a92a8-38700146%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2256e678e138e4cc98ef0e1faa6c4da3a7b4c2d7' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\newapp\\smarty\\templates\\installDB.html',
      1 => 1382770615,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5079526b32173a92a8-38700146',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_526b32173ada70_48557733',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_526b32173ada70_48557733')) {function content_526b32173ada70_48557733($_smarty_tpl) {?><style type="text/css">
label.error {
  margin-left: 10px;
  display: inline;
  color: red;
  font-style: italic;
  font-weight: normal;
}
input.error {
  border: 2px solid red;
}
</style>
<div class="tabbable tabs-left" style="margin-top:60px">
  <ul class="nav nav-tabs">
    <li class="active"><a href="#createdb" data-toggle="tab">Create Database</a></li>
    <li><a href="#selectfeature" data-toggle="tab">Select Feature(s)</a></li>
    <li><a href="#applicationinfo" data-toggle="tab">Application Info</a></li>
  </ul>
  <div class="tab-content">  
    <form id="wizardform">
    <section class="tab-content">    
    <section class="tab-pane active" id="createdb">
      <h3 >Create Database</h3>
      <label for="selectdb">Select Database</label>
      <select name="selectdb" id="selectdb">
        <option value="mysql" selected>MySQL</option>
        <option value="postgresql">Postgresql</option>        
      </select>
      <label for="schemaname">Schema Name</label>
      <input type="text" id="schemaname" name="schemaname" placeholder="Schema Name">     
      <label for="schpassword">Schema Password</label>
      <input type="password" id="schpassword" name="schpassword" placeholder="Schema Password">     
      <label for="reschpassword">Re-enter Password</label>
      <input type="password" id="reschpassword" name="reschpassword" placeholder="Re-enter Schema Password">     
      <label for="tblprefix">Table Prefix</label>
      <input type="text" id="tblprefix" name="tblprefix" placeholder="Table Prefix">     
    </section>            
    <section class="tab-pane" id="selectfeature">
      <label class="checkbox" for="feaworkflow">
        <input type="checkbox" name="feaworkflow" id="feaworkflow" value="workflow">
        Workflow
      </label>
      <label class="checkbox" for="feaemail">
        <input type="checkbox" name="feaemail" id="feaemail" feaemalvalue="email">
        Email
      </label>
    </section>
    <section class="tab-pane" id="applicationinfo">      
      <h3>Enter Application Info</h3>
      <label for="appname">Application Name</label>
      <input type="text" id="appname" name="appname" placeholder="Application Name">     
      <label for="sitetitle">Site Title</label>
      <input type="text" id="sitetitle" name="sitetitle" placeholder="Site Title">     
      <label for="adminuserid">Admin userid</label>
      <input type="text" id="adminuserid" name="adminuserid" placeholder="Admin userid">     
      <label for="adminpassword">Admin Password</label>
      <input type="password" id="adminpassword" name="adminpassword" placeholder="Admin password">
      <label for="adminemail">Email address</label>
      <input type="text" id="adminemail" name="adminemail" placeholder="Email Address">  <h6> Note:To recover password if forget the admin password  </h6>
    </section>      
    </section>    
  </div>
  </form>
</div>
<button class="btn btn-primary btn-large" id="submit"> Submit </button>
<script type="text/javascript">
var $wizardform       = $('#wizardform');
var $btnsubmit = $('#submit');

$.validator.addMethod("password_not_same", function(value, element) {
   return $('#schpassword').val() == $('#reschpassword').val()
}, "Password does not match");


$wizardform.validate({
    rules: {
      schemaname     : "required",     
      schpassword    : "required",
      reschpassword  : { required:true, password_not_same:true},
      tblprefix      : "required"

    },
    messages: {
      schemaname     : "Please enter database schemaname",
      schpassword    : { required:"Please enter schemas password"},
      reschpassword  : { required:"Please re-enter schemas password", password_not_same:"Password does not match"},
      tblprefix      : "Please enter table prefix"
    }
  });

$btnsubmit.click(function(){
  console.log('inside here');
  var isValid = $wizardform.valid();    
});
</script><?php }} ?>