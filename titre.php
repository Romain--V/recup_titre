<?php

$url_abes = "http://www.sudoc.fr/";
$rdf = ".rdf";
$rech= "dc:title";

$ppns = array('08410533X','002390248','011097809');

foreach ($ppns as $ppn) {
    $url = $url_abes . $ppn . $rdf;
    $page = file_get_contents($url);

    if ($res = preg_match("#<$rech>([^<]+)</$rech>#", $page, $matches)) {
        echo sprintf("%s\n", $matches[1]);
    }
}
 

