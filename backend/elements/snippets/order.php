<?php
if (!$input || empty($input)) return false;
if (!$formType || trim($formType)=='') return false;
//------
$resource = $modx->getObject('modResource',3);
$emailUser=trim($resource->getTVValue('emailUser'));
$emailPassword=trim($resource->getTVValue('emailPassword'));
$emailSMTP=trim($resource->getTVValue('emailSMTP'));
$emailPort=(int)$resource->getTVValue('emailPort');
$emailSMTPSecure=$resource->getTVValue('emailSMTPSecure');
$emailTo=$resource->getTVValue('emailTo');
//------
switch ($formType) {
    case('orderportfolio'): {
        $modx->getService('mail', 'mail.modPHPMailer');
        $modx->mail->set(modMail::MAIL_ENGINE, 'smtp');
        $modx->mail->set(modMail::MAIL_SMTP_AUTH,true);
        $modx->mail->set(modMail::MAIL_SMTP_USER,$emailUser);
        $modx->mail->set(modMail::MAIL_SMTP_PASS,$emailPassword);
        $modx->mail->set(modMail::MAIL_SMTP_HOSTS,$emailSMTP);
        $modx->mail->set(modMail::MAIL_SMTP_PORT,$emailPort);
        $modx->mail->set(modMail::MAIL_SMTP_PREFIX,$emailSMTPSecure);
        $modx->mail->set(modMail::MAIL_BODY,$message);
        $modx->mail->set(modMail::MAIL_FROM,$emailUser);
        $modx->mail->set(modMail::MAIL_FROM_NAME,'Sneg заказ');
        $modx->mail->set(modMail::MAIL_SUBJECT,'Новый заказ со страницы портфолио');
        $message = str_replace('[[+phone]]', $input['phone'], str_replace('[[+name]]', $input['name'], $modx->getChunk('orderportfolioEmailTemplate')));
        $modx->mail->set(modMail::MAIL_BODY,$message);
        $modx->mail->setHTML(true);
        $modx->mail->address('to',$emailTo);
        if (!$modx->mail->send()) {
            $modx->log(modX::LOG_LEVEL_ERROR,'An error occurred while trying to send the email: '.$modx->mail->mailer->ErrorInfo);
            $modx->mail->reset();
            return false;
        } else {
            $modx->mail->reset();
            return true;
        }
        break;
    }
    case('orderindexpackage'): {
        $modx->getService('mail', 'mail.modPHPMailer');
        $modx->mail->set(modMail::MAIL_ENGINE, 'smtp');
        $modx->mail->set(modMail::MAIL_SMTP_AUTH,true);
        $modx->mail->set(modMail::MAIL_SMTP_USER,$emailUser);
        $modx->mail->set(modMail::MAIL_SMTP_PASS,$emailPassword);
        $modx->mail->set(modMail::MAIL_SMTP_HOSTS,$emailSMTP);
        $modx->mail->set(modMail::MAIL_SMTP_PORT,$emailPort);
        $modx->mail->set(modMail::MAIL_SMTP_PREFIX,$emailSMTPSecure);
        $modx->mail->set(modMail::MAIL_BODY,$message);
        $modx->mail->set(modMail::MAIL_FROM,$emailUser);
        $modx->mail->set(modMail::MAIL_FROM_NAME,'Sneg заказ');
        $modx->mail->set(modMail::MAIL_SUBJECT,'Новый заказ пакета услуг фотосъемки');
        $message = str_replace('[[+type]]', $input['type'], str_replace('[[+package]]', $input['package'], str_replace('[[+phone]]', $input['phone'], str_replace('[[+name]]', $input['name'], $modx->getChunk('orderindexpackageEmailTemplate')))));
        $modx->mail->set(modMail::MAIL_BODY,$message);
        $modx->mail->setHTML(true);
        $modx->mail->address('to',$emailTo);
        if (!$modx->mail->send()) {
            $modx->log(modX::LOG_LEVEL_ERROR,'An error occurred while trying to send the email: '.$modx->mail->mailer->ErrorInfo);
            $modx->mail->reset();
            return false;
        } else {
            $modx->mail->reset();
            return true;
        }
        break;
    }
    case('orderindexcertificate'): {
        $modx->getService('mail', 'mail.modPHPMailer');
        $modx->mail->set(modMail::MAIL_ENGINE, 'smtp');
        $modx->mail->set(modMail::MAIL_SMTP_AUTH,true);
        $modx->mail->set(modMail::MAIL_SMTP_USER,$emailUser);
        $modx->mail->set(modMail::MAIL_SMTP_PASS,$emailPassword);
        $modx->mail->set(modMail::MAIL_SMTP_HOSTS,$emailSMTP);
        $modx->mail->set(modMail::MAIL_SMTP_PORT,$emailPort);
        $modx->mail->set(modMail::MAIL_SMTP_PREFIX,$emailSMTPSecure);
        $modx->mail->set(modMail::MAIL_BODY,$message);
        $modx->mail->set(modMail::MAIL_FROM,$emailUser);
        $modx->mail->set(modMail::MAIL_FROM_NAME,'Sneg заказ');
        $modx->mail->set(modMail::MAIL_SUBJECT,'Новый заказ подарочного сертификата');
        $message = str_replace('[[+text]]', $input['text'], str_replace('[[+name-who]]', $input['name-who'], str_replace('[[+phone-who]]', $input['phone-who'], str_replace('[[+phone]]', $input['phone'], str_replace('[[+name]]', $input['name'], $modx->getChunk('orderindexcertificateEmailTemplate'))))));
        $modx->mail->set(modMail::MAIL_BODY,$message);
        $modx->mail->setHTML(true);
        $modx->mail->address('to',$emailTo);
        if (!$modx->mail->send()) {
            $modx->log(modX::LOG_LEVEL_ERROR,'An error occurred while trying to send the email: '.$modx->mail->mailer->ErrorInfo);
            $modx->mail->reset();
            return false;
        } else {
            $modx->mail->reset();
            return true;
        }
        break;
    }
    case('orderindexphotocourse'): {
        $modx->getService('mail', 'mail.modPHPMailer');
        $modx->mail->set(modMail::MAIL_ENGINE, 'smtp');
        $modx->mail->set(modMail::MAIL_SMTP_AUTH,true);
        $modx->mail->set(modMail::MAIL_SMTP_USER,$emailUser);
        $modx->mail->set(modMail::MAIL_SMTP_PASS,$emailPassword);
        $modx->mail->set(modMail::MAIL_SMTP_HOSTS,$emailSMTP);
        $modx->mail->set(modMail::MAIL_SMTP_PORT,$emailPort);
        $modx->mail->set(modMail::MAIL_SMTP_PREFIX,$emailSMTPSecure);
        $modx->mail->set(modMail::MAIL_BODY,$message);
        $modx->mail->set(modMail::MAIL_FROM,$emailUser);
        $modx->mail->set(modMail::MAIL_FROM_NAME,'Sneg заказ');
        $rs = $modx->getObject('modResource', 11);
        $modx->mail->set(modMail::MAIL_SUBJECT,$rs->getTVValue('subjectMailPhotocourse'));
        $message = str_replace('[[+phone]]', $input['phone'], str_replace('[[+name]]', $input['name'], $modx->getChunk('orderindexphotocourseEmailTemplate')));
        $modx->mail->set(modMail::MAIL_BODY,$message);
        $modx->mail->setHTML(true);
        $modx->mail->address('to',$emailTo);
        if (!$modx->mail->send()) {
            $modx->log(modX::LOG_LEVEL_ERROR,'An error occurred while trying to send the email: '.$modx->mail->mailer->ErrorInfo);
            $modx->mail->reset();
            return false;
        } else {
            $modx->mail->reset();
            return true;
        }
        break;
    }
}