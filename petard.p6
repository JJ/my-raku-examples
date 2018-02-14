#!/usr/bin/env perl6

# Feed (left-to-right) with parentheses, read top-to-bottom 
my @result =(
    <TWO THREE FOUR FIVE SEVEN> »~» " " X~ <FIFTHS SIXTHS EIGHTHS>
    ==> map( {"VULGAR FRACTION " ~ $^þ } )
    ==> grep({ .uniparse })
    ==> map( { .uniparse} );
);
#
say @result;

@result = ( <TWO THREE FOUR FIVE SEVEN> »~» " " X~ <FIFTHS SIXTHS EIGHTHS>).map( {"VULGAR FRACTION " ~ $^þ } ).grep({ .uniparse }).map({ .uniparse });
say @result;
