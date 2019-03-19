<?php
$page = $modx->getObject('modResource', $id);
$tv=$modx->fromJSON($page->getTVValue('categorySelector'));
$output='';
foreach ($tv as $row) {
  $output .= $row['name'].'=='.$row['value'].'||';
}
return trim($output,'||');