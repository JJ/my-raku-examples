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

{
    my $a = 1;
    $_ = False;
    when so $a { say "We have a 3" }
}

{
    my $a = 0;
    $_ = False;
    when so $a { say "We have a 4" }
}

{
    $_ = 33;
    when 30 + 3 { say "We have a 5" }
}

{
    $_ = 32;
    when 30 + 3 { say "We have a 6" }
}
