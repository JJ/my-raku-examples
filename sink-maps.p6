#!/usr/bin/env perl6

use v6;

<foo bar ber>.map: *.say;
<foo bar ber>.map: { $^þ.comb.map: {$^ß.say}}
say <foo bar ber>.map: { $^þ.comb }
