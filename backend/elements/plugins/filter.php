<?php
if ($modx->event->name != 'OnPageNotFound') {return false;}
$alias = $modx->context->getOption('request_param_alias', 'q');
if (!isset($_REQUEST[$alias])) {return false;}

$request = $_REQUEST[$alias];
$tmp = explode('/', $request);
if ($tmp[0] == 'portfolio' && count($tmp) >= 2) {
	if (!$section = $modx->findResource($tmp[0])) {
		return false;
	}
	$name = str_replace('.html', '', $tmp[1]);
	if ($tmp[1] != $name || (isset($tmp[2]) && $tmp[2] == '')) {
		$modx->sendRedirect($tmp[0] . '/' . $name);
	}
		$_GET['f'] = $_REQUEST['f'] = $name;
		$modx->sendForward($section);
}