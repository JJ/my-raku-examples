#!/usr/bin/env perl6

multi sub cuenta( Str $str ) { say $str };

multi sub cuenta( $file where .IO.e ) { say $file.IO.slurp };

cuenta( $*PROGRAM-NAME );
