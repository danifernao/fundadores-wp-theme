<?php
/*
Plugin Name: MailHog Config
Description: Configura WordPress para enviar correos a través de MailHog en desarrollo.
Version: 1.0
*/

add_action('phpmailer_init', function($phpmailer) {
    $phpmailer->isSMTP();
    $phpmailer->Host       = 'mailhog';
    $phpmailer->Port       = 1025;
    $phpmailer->SMTPAuth   = false;
    $phpmailer->SMTPSecure = false;
});