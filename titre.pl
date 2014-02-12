#!/usr/bin/perl

use strict;
use warnings;
use LWP::Simple;

my $url_abes = "http://www.sudoc.fr/";
my $rdf = ".rdf";
my $rech= "dc:title";


my @ppn = ('08410533X','002390248','011097809');

foreach my $ppn (@ppn) {
 my $url = $url_abes . $ppn . $rdf;
 my $page = get($url);
   if ($page =~ /<$rech>(.+)<\/$rech>/) {
     print "$1\n";
     }
   }
 

