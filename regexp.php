<?php

/*$str = "A1B2C3D4E5F6G7H8I9J0";
$pattern = '/[\w][\d]/';
preg_match_all($pattern, $str, $matches);
print '<pre>';
var_Dump($matches);*/

/*$str = "apple to apple";
$pattern = '/(apple) to \1/';
preg_match_all($pattern, $str, $matches);
print '<pre>';
var_Dump($matches);
*/

/*$subject = "abcdef";
$pattern = '/^abc/';
preg_match($pattern, $subject, $matches, PREG_OFFSET_CAPTURE);
print '<pre>';
var_Dump($matches);*/

/*US postal code*/
/*$str = "75862 
        66500-4412";*/
$str = "U.S. House of 20515-9999 Representatives
Washington, DC 20515";
$pattern = "/\d{5}(-\d{4})?/";        
preg_match_all($pattern,$str,$matches);        

print '<pre>';
var_Dump($matches);
?>