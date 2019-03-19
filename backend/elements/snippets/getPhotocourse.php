<?php
$resource = $modx->getObject('modResource',11);
return $modx->getChunk($tpl, array('photocourseText'=>$resource->getTVValue('photocourseText'), 'photocourseImage'=>$resource->getTVValue('photocourseImage'), 'titleBlockPhotocourse'=>$resource->getTVValue('titleBlockPhotocourse')));