#!/usr/bin/env perl6

use v6;

class Bar {
    has $.quux;
    has @.foo = <a b>;
    has %.bar = <a b c d>;
    method clone { nextwith :foo(@!foo.clone), :bar(%!bar.clone), |%_  }
}

my $o1 = Bar.new: quux => 42;
with my $o2 = $o1.clone {
    .foo = <Z Y>;
    .bar = <Z Y X W>;
}

# Hash and Array attribute modifications in clone do not affect original:
say $o1; # OUTPUT: «Bar.new(foo => ["a", "b"], bar => {:a("b"), :c("d")})␤»
say $o2; # OUTPUT: «Bar.new(foo => ["Z", "Y"], bar => {:X("W"), :Z("Y")})␤»
say $o2.clone( quux => 36 );
