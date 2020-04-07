#!/usr/bin/env raku

class WithApi:ver<0.0.1>:auth<github:JJ>:api<1>  {}
my constant two = my class WithApi:ver<0.0.1>:auth<github:JJ>:api<2> {}
my constant three =  my class WithApi:ver<0.0.2>:api<1> {}

multi sub get-api( $foo where .^api() == 1 &&  .^name eq "WithApi" ) {
    return "That's version 1";
}

multi sub get-api( $foo where .^api() == 2 && .^name eq "WithApi") {
    return "That's version deuce";
}

say get-api(WithApi.new);
say get-api(two.new);
say get-api(three.new);
