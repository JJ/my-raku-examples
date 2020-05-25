#!/usr/bin/env raku

my $name = '$foo';
require Foo:file("foo.p6");
say Foo::{$name};

