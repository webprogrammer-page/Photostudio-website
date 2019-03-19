<?php
if (!isset($parent) || !$parent || empty($parent)) return false;
if (empty($tpl)) return false;
$child_ids = $modx->getChildIds($parent,1);
$output='';
foreach ($child_ids as $child_id){
   $resource = $modx->getObject('modResource', $child_id);
   $output.= $modx->getChunk($tpl, array('text'=>$resource->get('menutitle'), 'anchor'=>$resource->getTVValue('categorySelectorForTypePhotography')));
}
return $output;