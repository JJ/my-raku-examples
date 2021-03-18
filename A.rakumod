unit class A;

my \MAXVALUE = 1000_000;

has $.c where 0 < * < MAXVALUE;

submethod BUILD( :$!c ) {}

method gist() {
    "$!c";
}
