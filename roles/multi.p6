#!/usr/bin/env perl6

role A {
    has $!b;

    submethod BUILD( :$!b ) {}
    
    multi method bar () {
	return $!b;
    }
}

class B does A {

    submethod BUILD( :$!b ) {}

    multi method bar() {
	return " * " ~ callwith() ~ " * ";
    }w
}

my $a = A.new( b => 33);
say $a.bar();
my $b = B.new( b => 33 );
say $b.bar();
