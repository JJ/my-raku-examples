#!/usr/bin/env perl6

use v6;

my $handle = IO::Path.new("/tmp/foo", :encoding<utf8-c8>);
$handle.spurt("þor is mighty");
