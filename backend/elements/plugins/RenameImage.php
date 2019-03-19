<?php
switch ($modx->event->name) {
    case 'OnFileManagerUpload':
        $bases = $source->getBases($directory);
        $fullPath = $bases['pathAbsolute'].ltrim($directory,'/');
        $directory = $source->fileHandler->make($fullPath);
        foreach ($files as $file) {
            $ext = @pathinfo($file['name'],PATHINFO_EXTENSION);
            rename($directory->getPath().$file['name'], $directory->getPath() . date("Y").'_'.date("m").'_'.date("d").'_T'.str_replace('.', '',str_replace(' ', '_', microtime())).'.'.trim($ext,'.'));
        }
        break;
    default: break;
}
return true;