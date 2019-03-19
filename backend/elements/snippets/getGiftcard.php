<?php
$resource = $modx->getObject('modResource',10);
return $modx->getChunk($tpl, array('giftcardText'=>$resource->getTVValue('giftcardText'), 'giftcardImage'=>$resource->getTVValue('giftcardImage'), 'titleBlockGiftCard'=>$resource->getTVValue('titleBlockGiftCard')));