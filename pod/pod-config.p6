#!/usr/bin/env perl6

use v6;

=begin pod :3foo
Does not really matter
=end pod

=begin pod :foo(3)
Does not really matter much
=end pod

dd $=pod;
