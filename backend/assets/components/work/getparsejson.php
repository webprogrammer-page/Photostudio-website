<?php
/**@var @modX $modx */
define('MODX_API_MODE', true);
require_once dirname(dirname(dirname(dirname(__FILE__)))).'/index.php';

$modx->getService('error', 'error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_ERROR);
$modx->setLogTarget('FILE');

$offset=(int)$_GET['offset'];
$filter=trim($_GET['filter']);
$resource = $modx->getObject('modResource', 2);
$result = $modx->runSnippet('parseJSON', array(
    'input' => $resource->getTVValue('portfolioGallery'),
    'tpl'=> 'portfolioItem',
    'tplWithoutShowmore'=>'portfolioGalleryBottomWithoutShowMoreButton',
    'tplWithShowmore'=>'portfolioGalleryBottomWithShowMoreButton',
    'show_more'=>1,
    'limit'=>6,
    'offset'=>$offset,
    'filter'=> $filter

));
$res=explode("|||||",$result);

echo json_encode(array(
    'html'=>$res[0],
    'test_for'=>$res[1],
    'success'=>true
));