<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'shelf_input.conf.php');

# customization
function shelf_input_customize(&$dbo){
}

if(isset($_GET['shelfid']) && $_GET['shelfid'] !='') print 'shelfid11111 = '.$_GET['shelfid'].'<br>'; 
else {print 'haha1234';}
# final rendering
$dbo->sql = "select * from smshelfitem where sfi_slfid = '".$_GET['shelfid']."'";
$dbo->render();


?>