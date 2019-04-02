#!/usr/bin/env perl6

use v6;

my %myth-objects =  %(Þor => "Mjólnir", Oðinn => "Hugin") ;
say %myth-objects;
say %myth-objects.ACCEPTS("Oðinn");
say %myth-objects ~~ "Oðinn";
say %myth-objects.^name;
