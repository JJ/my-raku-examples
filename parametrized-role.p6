#!/usr/bin/env perl6

use v6;

subset Two-Tops of UInt where * <=2;
subset Three-Tops of UInt where * <=3;

role Zipi[ ::Capper ] {
    has Capper $.floor;
}
    
class Capped-at-three does Zipi[Three-Tops] {}


my $capped = Capped-at-three.new( floor => 2 );
say $capped.raku;
