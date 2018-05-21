#!/usr/bin/env perl6

use JSON::Tiny;

my $config = from-json('{ "files": 3, "path": "/home/perl6/perl6.pod6" }');

say $config.perl;
say $config.elems;
my %config-hash = $config<>;
say %config-hash.perl;
say %config-hash.elems;

my $cont = $[ { 'files' => 3}, {'this' => 'that'}];
say $cont.perl;
say $cont.elems;
%config-hash = $cont<>;
say %config-hash.perl;
say %config-hash.elems;


