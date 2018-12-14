#!/usr/bin/env perl6

subset real-files of Str where .IO.e;

multi sub cuenta( Str $str ) { say $str };

multi sub cuenta( real-files $file ) { say $file.IO.slurp };

cuenta( $*PROGRAM-NAME );
