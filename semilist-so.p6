#!/usr/bin/env perl6

class Bar
{
    has @.grid is rw;

    method AT-POS($y, $x) is rw { say "AT-POS $y, $x"; return-rw @!grid[$y;$x] }
    method ASSIGN-POS($y, $x, $new) is rw { say "ASSIGN-POS $y, $x"; return @!grid[$y;$x] = $new }
    method Str { '<' ~ @!grid».join(' ').join("\n ") ~ '>' }
    method gist { self.Str }
}

my $bar = Bar.new(:grid(<a b c d e>, <f g h i j>, <k l m n o>));
say $bar;
say $bar[1;2];
$bar[2;3] = 'z';
say $bar;
