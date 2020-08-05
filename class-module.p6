#!/usr/bin/env perl6

module Foo { sub bar() is export { "baz" }}

import Foo;

say bar;
