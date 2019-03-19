<?php
$ids = $modx->getChildIds(4,1,array('context' => 'web'));
$docs = $modx->getCollection('modResource', array(
    'id:IN' => $ids,
    'published'=>'1',
    'deleted'=>'0'
));
$output = array();
if (empty($tpl)) return false;
if (empty($tplPackage)) return false;
foreach($docs as $doc) {
    $inner = $modx->fromJSON($doc->getTVValue('package'));
    if (!$inner)
        $output[] = $modx->getChunk($tpl, array('titleTypePhotography'=>$doc->getTVValue('titleTypePhotography'), 'subtitleTypePhotography'=>$doc->getTVValue('subtitleTypePhotography'), 'imageTopTypePhotography'=>$doc->getTVValue('imageTopTypePhotography'), 'urlTypePhotography'=>trim($doc->getTVValue('urlTypePhotography'), '/').'/'.trim($doc->getTVValue('categorySelectorForTypePhotography')), 'package'=>'', 'anchor'=>$doc->get('alias')));
    else {
         $output_inner = array();
         $cnt=0;
        foreach ($inner as $row) {
          $cnt++;
          $row['image']='content/'.$row['image'];
          $row['titleTypePhotography'] = $doc->getTVValue('titleTypePhotography');
          if($cnt==2)
            $output_inner[] = '<div class="item carousel-item col-12 col-md-4 border-width-5 active">'.$modx->getChunk($tplPackage, $row);
          else
            $output_inner[] = '<div class="item carousel-item col-12 col-md-4 border-width-1">'.$modx->getChunk($tplPackage, $row);
        }
        $output[] = $modx->getChunk($tpl, array('titleTypePhotography'=>$doc->getTVValue('titleTypePhotography'), 'subtitleTypePhotography'=>$doc->getTVValue('subtitleTypePhotography'), 'imageTopTypePhotography'=>$doc->getTVValue('imageTopTypePhotography'), 'urlTypePhotography'=>trim($doc->getTVValue('urlTypePhotography'), '/').'/'.trim($doc->getTVValue('categorySelectorForTypePhotography')), 'package'=>implode('',$output_inner), 'anchor'=>$doc->get('alias')));
    }
     
}
return implode("\n", $output);