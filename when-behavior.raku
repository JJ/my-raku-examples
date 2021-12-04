#!/usr/bin/env raku

{
    my $a = 1;
    when $a { say "We have a 0" }
}

{
    my $a = 1;
    $_ = 0;
    when $a { say "We have a 1" }
}

{
    my $a = 1;
    $_ = 1;
    when $a { say "We have a 2" }
}
