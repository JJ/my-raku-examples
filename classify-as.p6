#!/usr/bin/env perl6

use v6;

my @list = <Innie Minnie Moe>;

my @classified = @list.classify( { $_.chars }, :as{ lc $_ } );
say @classified;

