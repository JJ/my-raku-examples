#!/usr/bin/env raku

class A {
    method a() {
	return 1;
    }
};

class foo {
    has $.bar = 3;
};
