#!/usr/bin/env perl6

use v6;

class a-class {
    has $.an-attribute is rw;
}

say (a-class.new.an-attribute = "hey");
my a-class $an-object .= new;

$an-object.an-attribute = "hey now";
say $an-object.an-attribute();
