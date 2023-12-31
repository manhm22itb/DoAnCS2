<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitb42a716cc3498339b94515e6d1a5f8cc
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitb42a716cc3498339b94515e6d1a5f8cc::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitb42a716cc3498339b94515e6d1a5f8cc::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitb42a716cc3498339b94515e6d1a5f8cc::$classMap;

        }, null, ClassLoader::class);
    }
}
