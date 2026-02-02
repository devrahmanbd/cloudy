<?php
define('CLIENTAREA', true);

require __DIR__ . '/init.php';

use WHMCS\ClientArea;

$ca = new ClientArea();
$ca->setPageTitle('Shared Hosting');

// Breadcrumbs (optional, but safe)
$ca->addToBreadCrumb('index.php', \Lang::trans('globalsystemname'));
$ca->addToBreadCrumb('hosting.php', 'Shared Hosting');

$ca->initPage();

$ca->setTemplate('hosting');

$ca->output();
