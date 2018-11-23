#!/usr/bin/env perl6

use v6;


my grammar Pair-Quoted {
    token TOP { ^ <letters> | <quoted> $}
    proto token quoted {*}
    token quoted:sym<em> { '*' ~ '*' <letters> }
    token quoted:sym<code> { '`' ~ '`' <letters> }
    token quoted:sym<strong> { '**' ~ '**' <letters> }
    token quoted:sym<u> { '_' ~ '_' <letters> }
    token letters { <[\w] - [_]>+ }
}

my $quoted = "_enhanced_";
my $parsed = Pair-Quoted.parse($quoted);
say $parsed;

import Pair-Quoted 'letters';

say "what_ever" ~~ /<letters>/;
