#!/usr/bin/env perl6

use v6;

my $type = Metamodel::ClassHOW.new_type(name => "NewType", 
                                        ver => v0.0.1, 
                                        auth => 'github:perl6' );
$type.HOW.add_method($type,"hey", method { say "Hey" });
$type.hey; # OUTPUT: «Hey␤»
$type.HOW.compose($type);
my  $instance = $type.new;
$instance.hey;
