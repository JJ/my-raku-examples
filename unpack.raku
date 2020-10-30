#!/usr/bin/env raku
use experimental :pack;

my $bytearray = "01234567".encode('utf-8');

say $bytearray.unpack("A1 L H");  
