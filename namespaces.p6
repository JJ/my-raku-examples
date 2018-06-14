#!/usr/bin/env perl6

use v6;

my $name::space = 3;
my @name::calling = <1 3>;

say MY::.keys;
say OUR::.keys;

my %name::sake::list = %("Juan Julián" => "JJ",
			 "Guevara"     => "Ché" );

say OUR::name::.keys;
say OUR::name::sake::.keys;
