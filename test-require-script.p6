#!/usr/bin/env raku

use lib <../../forks/perl6/raku-io-capture-simple/lib>;
use lib <.>;
use IO::Capture::Simple;
@*ARGS = <--env>;
say capture_stdout {
    require "./say-env-sub.p6";
}

