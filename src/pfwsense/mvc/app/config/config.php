<?php

/* Autoloader doesn't exist yet */
include('/usr/local/pfwsense/mvc/app/library/PFWsense/Phalcon/Config/Config.php');
include('/usr/local/pfwsense/mvc/app/library/PFWsense/Phalcon/Autoload/Loader.php');

return new PFWsense\Phalcon\Config\Config(array(
    'application' => array(
        'controllersDir' => __DIR__ . '/../../app/controllers/',
        'modelsDir'      => __DIR__ . '/../../app/models/',
        'viewsDir'       => __DIR__ . '/../../app/views/',
        'pluginsDir'     => __DIR__ . '/../../app/plugins/',
        'libraryDir'     => __DIR__ . '/../../app/library/',
        'cacheDir'       => __DIR__ . '/../../app/cache/',
        'baseUri'        => '/pfwsense_gui/',
    ),
    'globals' => array(
        'config_path'    => '/conf/',
        'temp_path'      => '/tmp/',
        'debug'          => false,
        'simulate_mode'  => false
    )
));
