#!/usr/bin/env raku

multi sub hashing( $foo, %hash ) { say $foo, %hash };
multi sub hashing( %hash ) { say %hash };


my $pair = :3foo;

hashing( $pair );
hashing( "Foo", $pair );

