#!/usr/bin/env perl6

use v6;

use lib <.>;

use Hello;
use Print;

my @packages=  MY::.keys.grep( /^^<upper> <lower>/ );
my @commands = do for @packages -> $p {
    my $foo = ::($p).new();
    $foo.command()<command>
};

multi MAIN( $command where * eq any(@commands) ) {
    say "We're doing $command";
}
