#!/usr/bin/env perl6

use v6;

my @floors = ( 'A', ('A','B', ('A','B','C')));
my $door = -> Str $floor { sub ( $maybe-apt ) { if $maybe-apt.^name ne 'List'  { return $floor ~ $maybe-apt } } } ;

my @block =  @floors.tree( (*.map: $door("1")), (*.map: $door("2")), (*.map: $door("3") ) );
print @block;
