#!/usr/bin/env raku

role Versioned {
    method version () {
        return self.^api;
    }
}

my constant one = my class WithApi:ver<0.0.1>:auth<github:JJ>:api<1> does Versioned {}
my constant two = my class WithApi:ver<0.0.1>:auth<github:JJ>:api<2> does Versioned {}

multi sub get-api( one $foo ) {
    return "That's version 1";
}

multi sub get-api( two $foo ) {
    return "That's version deuce";
}



say get-api(one.new);
say get-api(two.new);
