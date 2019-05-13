#!/usr/bin/env perl6

# On 2019.3.1 this gives:
# The iterator of this Seq is already in use/consumed by another Seq
# (you might solve this by adding .cache on usages of the Seq, or
# by assigning the Seq into an array)
#   in block <unit> at ./ch-2.p6 line 11

use v6;

my $src = 'a';
my @words = ['a', 'b', 'c', 'd'];

my @pending.push: { word => "123" };
for 1..10 {
    my $checkword = @pending.shift;
    my $aa = $checkword<word>.join;
    my $bb = $checkword<word>.join;

    my @potentials = find_one_off(@words);
    for @potentials -> $potential {
        say $potential;
        @pending.push: { word => $potential };
    }
}

sub find_one_off ( @words ) {
    state %cache;
    return %cache{'abc'} //= @words.grep( { 1 == 2 } );
}
