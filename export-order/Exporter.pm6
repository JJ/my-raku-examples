use v6;

unit module Exporter;

our $exported  is export  = 'Þor';

my $bar is export;

sub foo  is export { 'bar' };
# What is exactly a routine default scope? 
