#!/usr/bin/env perl6

use v6;
use Pod::To::Text;

=begin pod

I would like to talk about S<
what's the deal with the S formatting code             Yep!
>

=end pod

say $=pod[0].perl;
say pod2text($=pod[0]);
