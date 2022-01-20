#!/usr/bin/env perl6

use v6;

use experimental :macros;

macro modulo( $c ) {
    quasi { sqrt ({{{$c}}}.re*{{{$c}}}.re + {{{$c}}}.im*{{{$c}}}.im) }
};
say modulo( 3+4i );
