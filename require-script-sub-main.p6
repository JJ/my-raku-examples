#!/usr/bin/env raku

my @vars;
BEGIN {
     @vars = ['$collated-args'];
}

@*ARGS.append: "Another arg";
%*ENV<AAA> = 3;
{
    require "./say-env.p6" @vars;
#    say "Collated args → ", $collated-args;
}
{
    require "./say-env.p6" @vars;
}
