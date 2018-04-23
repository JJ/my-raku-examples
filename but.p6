#!/usr/bin/env perl6

use v6;

role R1 { method m {} }; 
role R2 { method n {} }
my $just-one-role = 1 but R1,R2; # R2 is in sink context
say $just-one-role.^name;
my $all-roles = 1 but (R1,R2); # R2 is in sink context
say $all-roles.^name;
