#!/usr/bin/env perl6

use v6;

my @φ =  1,1, * + * … ∞;
my $bú = Buf.new( @φ[^5] );

$bú.push( @φ[5] );
say $bú.perl; 
say $bú.pop();
say $bú.perl;

$bú.append( @φ[5..10] );
say $bú.perl; 
$bú.prepend( 0 );
say $bú.perl;

$bú.shift();
say $bú.perl;

$bú.unshift( 0 );
say $bú.perl;

$bú.splice:  0, 3, <3 2 1>;
say $bú.perl;
