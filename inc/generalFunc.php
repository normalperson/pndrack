<?php
  /**
  * Push with associative array  
  * @param array $arr
  * @param array $tmp
  * @return array $arr
  */  
function associative_push($arr, $tmp) {
  if (is_array($tmp)) {
    foreach ($tmp as $key => $value) { 
      $arr[$key] = $value;
    }
    return $arr;
  }
  return false;
}
  /**
  * Search value from 2 dimension array
  * @param string $value
  * @param string $index
  * @param array $array
  * @return true,false
  */ 
function searchValue($value, $index, $array) {
   foreach ($array as $key => $val) {
       if ($val[$index] == $value) {
           return true;
       }
   }
   return false;
}
function format_number($number,$decimal,$type='currency'){
	switch ($type) {
    case 'currency':
        return number_format($number,$decimal);
        break;    
	}
}

?>