<?php
require_once(dirname(__FILE__).'/inc/constant.inc.php');
require_once(dirname(__FILE__).'/../../fcore/init.inc.php');
require_once(dirname(__FILE__).'/header.inc.php');
require_once(dirname(__FILE__).'/inc/generalFunc.php');
$User->requireLogin();
require_once(DOC_DIR.'/inc/pndFunction.php');
?>