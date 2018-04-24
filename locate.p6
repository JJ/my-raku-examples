#!/usr/bin/env perl6

use v6;

use Zef::CLI;
use Zef::Client;
use Zef::Config;

sub MAIN( Str $file ) {
    my $client = get-client();
    my @candis = $client.list-installed.grep({
.dist.compat.meta<provides>.values.grep({.keys[0] eq $file}).so;
});
    for @candis -> $candi {
        LAST exit 0;
        NEXT say '';
        
        if $candi {
            my $libs = $candi.dist.compat.meta<provides>;
            my $lib  = $libs.first({.value.keys[0] eq $file});
            say "===> From Distribution: {~$candi.dist}";
            say "{$lib.keys[0]} => {$candi.from.prefix.child('sources').child($lib.value.values[0]<file>)}";
        }
    }
}
