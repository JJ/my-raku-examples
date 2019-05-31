#!/usr/bin/env perl6

use v6;

my $anon-class = anon class {
    has $.bar;
    method equal( ::?CLASS $foo ) {
	return $foo.bar == $.bar;
    }
};

say $anon-class.new( :3bar).equal( $anon-class.new( :3bar ) );

