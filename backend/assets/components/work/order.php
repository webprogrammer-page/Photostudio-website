<?php
/**@var @modX $modx */
if ($_SERVER['REQUEST_METHOD'] === 'POST')
{
    define('MODX_API_MODE', true);
    require_once dirname(dirname(dirname(dirname(__FILE__)))).'/index.php';
    
    $modx->getService('error', 'error.modError');
    $modx->setLogLevel(modX::LOG_LEVEL_ERROR);
    $modx->setLogTarget('FILE');
    
    $formType=preg_replace('/[^a-z]/', '', trim($_POST['formtype']));
    if($formType=='orderportfolio') {
       $result = $modx->runSnippet('order', array(
            'input' => $_POST,
            'formType'=> $formType
        ));
       
       echo json_encode(array(
        'success'=>$result
        )); 
    } else if($formType=='orderindexpackage') {
        $result = $modx->runSnippet('order', array(
            'input' => $_POST,
            'formType'=> $formType
        ));
       
       echo json_encode(array(
        'success'=>$result
        )); 
    } else if($formType=='orderindexcertificate') {
        $result = $modx->runSnippet('order', array(
            'input' => $_POST,
            'formType'=> $formType
        ));
       
       echo json_encode(array(
        'success'=>$result
        ));     
    } else if($formType=='orderindexphotocourse') {
        $result = $modx->runSnippet('order', array(
            'input' => $_POST,
            'formType'=> $formType
        ));
       
       echo json_encode(array(
        'success'=>$result
        ));     
    } else {
        echo json_encode(array(
        'success'=>$result
        ));
    }
    
    
}