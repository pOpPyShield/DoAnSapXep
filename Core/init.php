<?php
    $GLOBALS['config'] = array(
        'mysql' => array(
            'host' => '127.0.0.1',
            'username' => 'root',
            'password' => 'LilBump$26112001',
            'db' => 'again',
        ),
        'remember' => array(
            'cookie_name' => 'hash',
            'cookie_expiry' => 86400,
        ),
        'session' => array(
            'session_name' => array('user', 'admin', 'superadmin'),
            'token_name' => 'token',
        ),
    );
    spl_autoload_register(function($class) {
        $path = "classes/";
        $extension = ".php";
        $fullpath = $path . $class . $extension;
        if(!file_exists($fullpath)) {
            return false;
        }
        require_once $fullpath;
    });
    
?>