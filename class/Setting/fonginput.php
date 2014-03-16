<?php
require_once(dirname(__FILE__).'/../../init.inc.php');
html_header();

global $HTML, $DB;
?>
<form method="post">
<input type="text" name="text1" id="text1" readonly="false" value="text 1 default"/> <input type="submit" name="submit" id="submit" value="Submit"/>
</form>
<?php
pr($_POST);

// pr(get_defined_constants());
include(DOC_DIR.'/dbo/fonginput/fonginput.php');

// global $DB;
// $DB->showsql=1;

$format = 'YYYY-MM-DD HHap:MIN:SS';
d($format);
d($dbo->dateFormatPHP($format));
d($dbo->dateFormatJQuery($format));

d(' ', 'style="height:100px;"');
?>