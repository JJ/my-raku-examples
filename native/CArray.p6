#!/usr/bin/env perl6

use v6;

use NativeCall;
 
my $native-array = CArray[int32].new( 1, 2, 3, 4, 5 );
say 'Number of elements: ' ~ $native-array.elems;
 
# walk the array 
for $native-array.list -> $elem {
    say "Current element is: $elem";
}
 
# get every element by its index-based position 
for 0..$native-array.elems - 1 -> $position {
    say "Element at position $position is "
          ~ $native-array[ $position ];
}
