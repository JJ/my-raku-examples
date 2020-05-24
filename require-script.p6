#!/usr/bin/env raku

@*ARGS.append: "Another arg";
%*ENV<AAA> = 3;
require "./say-env.p6" <$collated-args>;
say "Collated args → ", $collated-args;
