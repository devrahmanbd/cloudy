<?php
define('CLIENTAREA', true);

require __DIR__ . '/init.php';

use WHMCS\ClientArea;

$ca = new ClientArea();
$ca->setPageTitle('Coming Soon');

// Breadcrumbs (optional, but safe)
$ca->addToBreadCrumb('index.php', \Lang::trans('globalsystemname'));
$ca->addToBreadCrumb('comingsoon.php', 'Coming Soon');

$ca->initPage();

$ca->setTemplate('comingsoon');

$ca->output();
