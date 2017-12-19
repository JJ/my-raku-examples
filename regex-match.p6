#!/usr/bin/env perl6

my @matches = @*ARGS.map( {$^þ ~~ m:g/\* ~ \* (\w+)/} );

say @matches.map: { $^þ.perl ~ "\n" };
