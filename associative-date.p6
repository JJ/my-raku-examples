#!/usr/bin/env perl6

use v6;

class Logger does Associative[Cool,DateTime] {
    has %.store;

    method log( Cool $event ) {
        %.store{ DateTime.new( now ) } = $event;
    }

    multi method AT-KEY ( ::?CLASS:D: $key) {
        my @keys = %.store.keys.grep( /$key/ );
        %.store{ @keys };
    }

    multi method EXISTS-KEY (::?CLASS:D: $key) {
        %.store.keys.grep( /$key/ )??True!!False;
    }

    multi method DELETE-KEY (::?CLASS:D: $key) {
        X::Assignment::RO.new.throw;
    }

    multi method ASSIGN-KEY (::?CLASS:D: $key, $new) {
        X::Assignment::RO.new.throw;
    }

    multi method BIND-KEY (::?CLASS:D: $key, \new){
        X::Assignment::RO.new.throw;
    }
}


my $logger = Logger.new;

$logger.log( "Stuff" );
$logger.log( "More stuff");

say $logger.of();
say $logger.store;

say $logger<2018-05-26>;
say $logger<2018-04-22>:exists;
#say $logger<2018-05-26> = 33;

my $bare-assoccer = Associative[Num,Str].new;

say $bare-assoccer.of;
