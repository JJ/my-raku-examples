#!/usr/bin/env perl6

use v6.c;
my $argfiles = IO::ArgFiles.new(@*ARGS);
.say for $argfiles.lines;
