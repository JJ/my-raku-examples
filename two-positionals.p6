#!/usr/bin/env perl6

sub two-positionals( @first, @second = <c d>) {
    return @first Z @second;
}

say two-positionals( <a b>);
