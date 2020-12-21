#!/usr/bin/env raku

class Foo does Associative {
  has Str $.str = "3";

  multi method AT-KEY (::?CLASS:D: Str $key) is rw {
    say "\nOutside of Proxy: { $!str.raku }";
    say "Outside of Proxy: { $!str.^name }";

    return-rw Proxy.new(
        FETCH => method () {
            say $!str;
            say "FETCH: { $!str.raku }";
            say "FETCH: { $!str.^name }";
        },
        STORE => method ($value) {
            say "STORE: { $!str.raku }";
            say "STORE: { $!str.^name }";
        }
    );
  }
}

my $string = 'foobar';

my %foo := Foo.new: :$string;
%foo<bar> = 'baz';
say %foo<bar>;
