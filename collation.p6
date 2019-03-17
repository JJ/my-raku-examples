#!/usr/bin/env perl6

use v6;

my $*COLLATION = Collation.new;
say 'a' coll 'z';
$*COLLATION.set(:primary(-1));
say 'a' coll 'z';
