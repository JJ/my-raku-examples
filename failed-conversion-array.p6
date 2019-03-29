#!/usr/bin/env perl6

use v6;

sub bar( Int @stuff ) {
    return [+] @stuff;
}

my Int @works = [1,2,3] ;
say bar( @works );
