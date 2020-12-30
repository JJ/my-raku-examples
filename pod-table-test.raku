#!/usr/bin/env raku

use Test;
# RT #​114480
=begin table

B<foo> | bar
baz | boop

=end table

say $=pod[0].contents[0][0].raku;
# isa-ok $=pod[0].contents[0][0], ;
