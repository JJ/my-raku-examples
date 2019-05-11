#!/usr/bin/env perl6

use v6;

my $fni    = "_92in.csv";

END { unlink $fni }

my $handle = $fni.IO.open( :enc("latin1"), :w );
say $handle;
#my $latin1-str = 'ID;Gerät;Nr'.encode('latin1');
#say $latin1-str.perl;
$handle.write( Buf.new( 1114,228,116 ) );
$handle.close;
