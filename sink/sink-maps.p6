#!/usr/bin/env perl6

use v6;

<foo bar ber>.map: *.say;
say <foo bar ber>.map: { $($^þ.comb.map: *.say) };
say <foo bar ber>.map: { $^þ.comb }
