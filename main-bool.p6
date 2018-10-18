#!/bin/env perl6

use v6;

sub MAIN ($filename ='test.fq', :$seed=floor(now) )
{
    say "Seed is $seed";
}
