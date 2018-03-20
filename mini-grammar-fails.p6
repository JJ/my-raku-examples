#!/usr/bin/env perl6

grammar will-fail {
    token TOP {^ <word> $}
    token word { \w+ }
}

class will-fail-actions {
    method TOP ($/) { my $foo = ~$/; say $foo ~~ /foo/;  }	
}

my $parsed = will-fail.parse("fafoo", actions => will-fail-actions.new);
say $parsed;



