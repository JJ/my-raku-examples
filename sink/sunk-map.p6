#!/usr/bin/env raku

my $a = -> { 42 };
my $b = -> { "foo" };

$a;
$a();
($a,$b).map: { $_ };

for 1..1 {
    ($a,$b).map: { $_.() };
}
