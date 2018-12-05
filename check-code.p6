#!/usr/bin/env perl6

use v6;

use Data::Dump;

use MONKEY-SEE-NO-EVAL;

sub MAIN( $module  ) {
    try require ::($module);
    say Dump( $::($module)::pod, :max-recursion(2) );
    
}

