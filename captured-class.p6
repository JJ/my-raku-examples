#!/usr/bin/env raku

role Capturer {
    method capturing(::CLASS:D: $ ) {
	say "Working with ", $?CLASS, " that holds ", $.gist;
    }
}


( <1 2 3 4> but Capturer ).capturing("foo");
