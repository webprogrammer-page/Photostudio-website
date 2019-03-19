<?php
$resource = $modx->getObject('modResource',3);
    $output='';
    switch($case) {
        case 'phoneFirstText': {
            $output=trim($resource->getTVValue('phoneFirst'));
            break;
        }
        case 'phoneFirstCall': {
            $output='+38'.preg_replace('/[^0-9]/s', '', trim($resource->getTVValue('phoneFirst')));
            break;
        }
         case 'phoneSecondText': {
            $output=trim($resource->getTVValue('phoneSecond'));
            break;
        }
        case 'phoneSecondCall': {
            $output='+38'.preg_replace('/[^0-9]/s', '', trim($resource->getTVValue('phoneSecond')));
            break;
        }
        case 'namePhoneFirst': {
            $output=trim($resource->getTVValue('namePhoneFirst'));
            break;
        }
        case 'namePhoneSecond': {
            $output=trim($resource->getTVValue('namePhoneSecond'));
            break;
        }
        case 'email': {
            $output=trim($resource->getTVValue('email'));
            break;
        }
        case 'behance': {
            $output=trim($resource->getTVValue('behance'));
            break;
        }
         case 'instagram': {
            $output=trim($resource->getTVValue('instagram'));
            break;
        }
         case 'google': {
            $output=trim($resource->getTVValue('google'));
            break;
        }
    }
return $output;