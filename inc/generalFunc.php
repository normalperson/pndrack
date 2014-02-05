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
function arr2tree($arr, $id_index, $parent_index, $ret_index = "__CHILDREN"){
	$rootRow = array();
	foreach ($arr as $i=>$row) {
		$haveParent = false;
		foreach ($arr as $crow) {
			if (strlen($row[$parent_index]) > 0 && $row[$parent_index] === $crow[$id_index] && $row[$id_index] !== $crow[$id_index]) {
				$haveParent = true;
				break;
			}
		}
		if (!$haveParent) $rootRow[] = $i;
	}
	
	function getNodeArr($arr, $parentid, $id_index, $parent_index, $ret_index) {
		$ret = array();
		foreach ($arr as $i=>$row) {
			if ($row[$parent_index] === $parentid) {
				$ret[] = array_merge($row, array($ret_index=>getNodeArr($arr, $row[$id_index], $id_index, $parent_index, $ret_index)));
			}
		}
		return $ret;
	}
		
	foreach ($rootRow as $r) {
		$tree[] = array_merge($arr[$r], array($ret_index=>getNodeArr($arr, $arr[$r][$id_index], $id_index, $parent_index, $ret_index)));
	}
    
    return $tree;
}
?>