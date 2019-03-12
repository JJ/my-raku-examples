#!/usr/bin/env perl6

use v6;

package Foo:ver<0> {};

module Foo:ver<1> {};

say Foo.^ver;
