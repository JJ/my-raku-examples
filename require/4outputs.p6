#!/usr/bin/env perl6

use v6;

use IO::Capture::Simple;

use lib ".";

my $output = capture_stdout {
    require "outputs.pm6";
}
say $output;

