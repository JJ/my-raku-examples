#!/usr/bin/env perl6

# Feed (left-to-right) with parentheses, read top-to-bottom 
my @result = (1..10).pick(*) X/ (3..6).pick(*) ==> map( { $^þ * 10 } ) ==> sort;  

say @result;
