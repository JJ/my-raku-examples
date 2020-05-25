#!/usr/bin/env raku

our $foo = @*ARGS.join: ".";
say "required ", @*ARGS;
