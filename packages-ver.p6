#!/usr/bin/env perl6

use v6;

package Foo:ver<1> {};

module Foo {};

say Foo.^ver;
say Foo.^name;
