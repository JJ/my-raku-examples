#!/usr/bin/env perl6

use v6;
#Answer to https://stackoverflow.com/questions/50135530/how-to-require-1-or-more-of-an-argument-in-main/50138906#50138906
die "Usage: $*EXECUTABLE <file> <file2>*" if !+@*ARGS;

my @files =  @*ARGS;

say @files;
