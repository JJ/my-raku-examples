#!/usr/bin/env perl6

use v6;

use experimental :macros;

macro is-mighty( $who ) {
    quasi { "$who is mighty!"}
};
say is-mighty "Freija";
