<?php
$input = $modx->fromJSON($input);
$output = array();
if (!$input || empty($tpl)) return false;
if (!isset($limit) || !$limit || empty($limit)) $limit=count($input);
if (!isset($offset) || !$offset || empty($offset)) $offset=0;
if (!isset($show_more) || !$show_more || empty($show_more)) $show_more=0;
if (!isset($first_load_page) || !$first_load_page || empty($first_load_page)) $first_load_page=0;
if (!isset($filter) || !$filter || empty($filter)) $filter='all';
if(isset($_GET['f']) && !empty($_GET['f'])) { 
    $f = preg_replace('/[^a-z]-/', '', trim($_GET['f']));
    if ($f == trim($_GET['f'])) {
        $filter=$f;
    }
    unset($_GET['f']);
}

$i_limit=0;
$i_copy=0;
$test_for=false;
$i_offset=0;
if($filter!='all') {
    $cnt_offset=0;
    for($i=0;$i<count($input);$i++) {
        if(trim($input[$i]['category'])==trim($filter)) {
            $cnt_offset=$cnt_offset+1;
            $i_offset=$i;
        }
        if($cnt_offset==$offset) {
            $offset=$i+1;
           break;
        }
    }
}
for($i=$offset;$i<count($input);$i++) {
  if($filter=='all') {
      $test_for=true;
      $i_copy=$i;
      $input[$i]['image']='content/'.$input[$i]['image'];
      $output[] = $modx->getChunk($tpl, $input[$i]);
      $i_limit=$i_limit+1;
      if($i_limit==$limit) break;
  } else {
      if(trim($input[$i]['category'])==trim($filter)) {
          $test_for=true;
          $i_copy=$i;
          $input[$i]['image']='content/'.$input[$i]['image'];
          $output[] = $modx->getChunk($tpl, $input[$i]);
          $i_limit=$i_limit+1;
          if($i_limit==$limit) break;
      }
  }
}
if(!$test_for)return "";
if ($show_more==0) {
    return implode("\n", $output);
} else {
    $additional_chunk='';
    if($first_load_page==1) {
        if($filter=='all') {
            if(($i_copy+1)==count($input)) {
                $additional_chunk=$modx->getChunk($tplWithoutShowmore);
            } else {
                $additional_chunk=$modx->getChunk($tplWithShowmore);
            }
            return implode("\n", $output)."\n".$additional_chunk;
        } else {
           $flag=0;
            for($i=$i_copy+1;$i<count($input);$i++) {
                if(trim($input[$i]['category'])==trim($filter)) {
                    $flag=1;
                    break;
                }
            }
            if($flag==0)  {
                $additional_chunk=$modx->getChunk($tplWithoutShowmore);
            } else {
                $additional_chunk=$modx->getChunk($tplWithShowmore);
            }
            return implode("\n", $output)."\n".$additional_chunk;
        }
    } else {
         if(($i_copy+1)==count($input)) $test_for=false;
        if($filter!='all') {
            $flag=0;
            for($i=$i_copy+1;$i<count($input);$i++) {
                if(trim($input[$i]['category'])==trim($filter)) {
                    $flag=1;
                    break;
                }
            }
            if($flag==0) $test_for=false;
        }
        
        if($test_for) return implode("\n", $output).'|||||'.'1'; else return implode("\n", $output).'|||||'.'0';
    }
    
}