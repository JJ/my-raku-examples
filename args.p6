#!/usr/bin/env perl6

use v6;

die "Usage: $*EXECUTABLE <file> <file2>*" if !+@*ARGS;

my @files =  @*ARGS;

say @files;
