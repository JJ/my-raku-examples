#!/usr/bin/env raku

my $one = Blob.new(<1 2 3>);
my $two = Blob[uint8].new(<4 5 6>);

dd $one ~ $two; # Buf.new(1,2,3,4,5,6)
