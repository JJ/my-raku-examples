#!/usr/bin/env perl6

use v6;

sub MAIN( Str $file ) {
    my $location = qqx/zef locate $file/;
    my $sha1 = ($location ~~ /\s+ \=\> \s+ (.+)/);
    say "$file → $sha1[0]";
}
