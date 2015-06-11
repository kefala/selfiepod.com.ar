<?php
use Doctrine\ORM\Tools\Console\ConsoleRunner;

require_once "vendor/autoload.php";

use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;
use Sarasa\Core\Config;

$paths = array('app');
$isDevMode = false;
$proxyDir = 'vendor/sarasa/compile/proxies';

$string = file_get_contents("config.json");
$settings = json_decode($string, true);

$dbParams = array(
        'driver'   => 'pdo_mysql',
        'user'     => $settings['dbuser'],
        'password' => $settings['dbpass'],
        'dbname'   => $settings['dbname'],
        'host'	   => $settings['dbhost']
    );
    
$config = Setup::createAnnotationMetadataConfiguration($paths, $isDevMode, $proxyDir);
$entityManager = EntityManager::create($dbParams, $config);
$platform = $entityManager->getConnection()->getDatabasePlatform();
$platform->registerDoctrineTypeMapping('enum', 'string');

$helperSet = new \Symfony\Component\Console\Helper\HelperSet(
    array(
        'em' => new \Doctrine\ORM\Tools\Console\Helper\EntityManagerHelper($entityManager)
    )
);
