#!/usr/bin/env raku

class WithApi:ver<0.0.1>:auth<github:JJ>:api<1>  {}
my constant two = my class WithApi:ver<0.0.1>:auth<github:JJ>:api<2> {}

multi sub get-api( WithApi $foo where .^api() == 1 ) {
    return "That's version 1";
}

multi sub get-api( WithApi $foo where .^api() == 2 ) {
    return "That's version deuce";
}



say get-api(WithApi.new);
say two.new.^api;
say get-api(two.new);
