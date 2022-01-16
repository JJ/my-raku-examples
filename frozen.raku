#!/usr/bin/env raku

use lib ".";

use Frozen;

frozen Foo {
    has $.bar;

    method set_bar( $bar ) {
        $!bar = $bar;
    }
    method gist() {
        return "→ $!bar";
    }
}

my $foo = Foo.new(:3bar);

say $foo.bar;

$foo.set_bar(33);
say $foo.bar;
