#!/usr/bin/env perl6

use v6;

use Data::Dump;

use lib <../grammars>;

use Santa-Letter;

say Dump( $Santa-Letter::pod, :indent(4) );

