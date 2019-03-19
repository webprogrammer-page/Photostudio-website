<?php
if (!isset($id) || !$id || empty($id)) return false;
if (empty($tpl)) return false;
$resource = $modx->getObject('modResource', $id);
return $modx->getChunk($tpl, array('text'=>$resource->get('menutitle'), 'anchor'=>$resource->get('alias')));