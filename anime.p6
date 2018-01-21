#!/usr/bin/env perl6

my @vowels = <a e i o u>;
my @syllabes =  @vowels.append: <k m n sh d r t y> X~ @vowels;
say (^100).map: { @syllabes.pick(2..5).join("") };
