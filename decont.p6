#!/usr/bin/env perl6

use JSON::Tiny;

my $config = from-json('{ "files": 3, "path": "/home/perl6/perl6.pod6" }');

say $config.perl;
say $config.elems;
my %config-hash = $config<>;
say %config-hash.perl;
say %config-hash.elems;

my $str = to-json [ { 'files' => 3}, {'this' => 'that'}];
$config = from-json $str;
say $config.perl;
say $config.elems;
%config-hash = $config<>;
say %config-hash.perl;
say %config-hash.elems;


say [ { a => 'b'} ];
say [ { a => 'b'}, ];
