<?php
  // Connect to the database
  $dbconn = pg_connect("host=localhost dbname=vhotel user=vhotel password=vhotel123");

 
  // Read in a binary file
  $data = file_get_contents('accom.jpg');
  
  // Escape the binary data, i tried both way escape
  #$escaped = base64_encode($data);
  $escaped = pg_escape_bytea($data);
  // Insert it into the database
  pg_query("INSERT INTO fcattachment (att_type, att_attachment) VALUES ('test', '{$escaped}')");
 
 // Testing retrieve code, check the id then retrieve from DB
  // Get the bytea data 
  /*$res = pg_query("SELECT att_attachment FROM fcattachment WHERE att_id = 62");  
  $raw = pg_fetch_result($res, 'att_attachment');
  
  // Convert to binary and send to the browser
  header('Content-Type: image/jpeg');
  echo pg_unescape_bytea($raw);*/
  #echo base64_decode($raw);
?>