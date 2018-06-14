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

my $foo::bar = 1;
my $foo:bar<2> = 2;
say MY::.keys;
# OUTPUT: «($=pod !UNIT_MARKER EXPORT $_ $! ::?PACKAGE
#          GLOBALish $¢ $=finish $/ $foo:bar $foo:bar<2>
#          $?PACKAGE)␤»
say OUR::.keys; # OUTPUT: «foo␤»
