#!/usr/bin/env raku

use v6;

sub MAIN(:$these ="These", :$are="Are", :$params="Params") {
    say "$these $are $params";
}
