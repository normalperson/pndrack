<?php
define('ANONYMOUS', true); // define do not require login
include_once('init.inc.php');
/* Testing code for SMTP
$emailobj = new Email();
$fromarr = array('emailadd' => 'inquiry@phiorion.com', 'name' => 'inquiry dept');
$replytoarr = array('emailadd' => 'inquiry@phiorion.com', 'name' => 'inquiry dept');
$toaddarr = array(
			array('emailadd'=>'esp@phiorion.com', 'name'=> 'Eng Shi Ping'),
		    array('emailadd'=>'danny@phiorion.com', 'name'=> 'The thinker')
  			);
$subject = 'Testing Email sending from new email class';

$content =  <<<'EOT'
<table>
<thead>
<tr>
  <td>head1</td>
  <td>head2</td>
  <td>head3</td>
  <td>head4</td>
</tr>
<tr>
  <td>col1</td>
  <td>col2</td>
  <td>col3</td>
  <td>col4</td>
</tr>
</table>
EOT;

$altbody = 'Alternative body text';
//$attachmentpath = IMAGE_HREF.'/logo.png'; // need to ask fong why this is not working
$attachmentpath = '';
$emailobj->sendEmail_bySMTP($fromarr,$replytoarr,$toaddarr,$subject,$content,$altbody,$attachmentpath);*/

 
/*$emailobj = new Email();
$fromarr = array('emailadd' => 'inquiry@phiorion.com', 'name' => 'inquiry dept');
$replytoarr = array('emailadd' => 'inquiry@phiorion.com', 'name' => 'inquiry dept');
$toaddarr = array(
			array('emailadd'=>'esp@phiorion.com', 'name'=> 'Eng Shi Ping'),
		    array('emailadd'=>'dannyphiorion.com', 'name'=> 'The thinker'),
		    array('emailadd'=>'normalperson85@gmail.com', 'name'=> 'Handsome')
  			);
$subject = 'Testing Email sending from new email class';

$content =  <<<'EOT'
<table>
<thead>
<tr>
  <td>phpmail1</td>
  <td>phpmail2</td>
  <td>phpmail3</td>
  <td>phpmail4</td>
</tr>
<tr>
  <td>col1</td>
  <td>col2</td>
  <td>col3</td>
  <td>col4</td>
</tr>
</table>
EOT;

$altbody = 'Alternative body text php mail ';
//$attachmentpath = IMAGE_HREF.'/logo.png'; // need to ask fong why this is not working
$attachmentpath = '';
$emailobj->sendEmail_byPhpMail($fromarr,$replytoarr,$toaddarr,$subject,$content,$altbody,$attachmentpath);*/

/*$emailobj = new Email();
$emailobj->pop3test();*/

#$mbox = imap_open("{mail.phiorion.com:995/pop3/ssl/novalidate-cert}", "esp@phiorion.com", "engshiping"); 

$emailobj = new Email();
#$emailobj->saveEmailtoFile_byPop3(APP_HREF);
#$emailobj->saveemail_byImap('{mail.phiorion.com:143/notls}INBOX','esp@phiorion.com','engshiping','UNSEEN');
$emailobj->saveemail_byImap('{imap.gmail.com:993/imap/ssl}INBOX','normalperson85@gmail.com','normalperson85@','UNSEEN');

#{imap.gmail.com:993/imap/ssl}INBOX

?>