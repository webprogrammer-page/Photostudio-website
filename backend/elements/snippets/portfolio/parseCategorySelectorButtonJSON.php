<?php
$input = $modx->fromJSON($input);
$output = array();
if (!$input || empty($tpl)) return false;
$filter='all';
if(isset($_GET['f']) && !empty($_GET['f'])) { 
    $f = preg_replace('/[^a-z-]/', '', trim($_GET['f']));
    if ($f == trim($_GET['f'])) {
        $filter=$f;
    }
}

for($i=0;$i<count($input);$i++) {
    if(trim($input[$i]['value'])==trim($filter)) {
        $input[$i]['active'] = ' active';
    } else {
        $input[$i]['active'] = '';
    }
    $input[$i]['name']=mb_strtoupper ($input[$i]['name'], 'UTF-8');
    $output[] = $modx->getChunk($tpl, $input[$i]);
}
$all['name'] = 'ВСЕ РАБОТЫ';
$all['value'] = 'all';
if($filter=='all') $all['active'] = ' active'; else $all['active'] = '';
 $output[] = $modx->getChunk($tpl, $all);
return implode("\n", $output);