#!/usr/bin/env perl6

use v6;

my @floors = ( 'A', ('A','B', ('A','B','C')));

my @block =  @floors.tree( (*.map: "1" ~ *), (*.map: "2" ~ *), (*.map: "3" ~ *) );
print @block;
