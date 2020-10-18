<?php

$_GET['route'] = 'extension/module/accubackup';
$root = dirname(dirname(dirname(__FILE__)));
chdir(dirname($root));
require_once('index.php');