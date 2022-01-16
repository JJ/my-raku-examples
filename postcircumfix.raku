#!/usr/bin/env raku


sub postcircumfix:<⟬ ⟭>( @a, Int $n ) {
    @a[^$n];
}

my @ary = 3..20;
say @ary⟬5⟭;
say "Ary @ary⟬5⟭";
