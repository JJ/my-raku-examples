#!/usr/bin/env perl6

use v6;

sub avg( @grades ) {
    return ([+] @grades) / +@grades;
}

sub drop_first_last($first, *@other-grades) {
    return avg(@other-grades[0..*-1]);
}

my @grades = <10 4 8 9 10 8>;
say drop_first_last( |@grades );
