#!/usr/bin/env perl6

# Feed (left-to-right) with parentheses, read top-to-bottom 
my @result = ((1..10).pick(5) X/ (3..6).pick(5)) ==> map( { $^þ * 10 } ) ==> sort;  
say @result;

@result =  sort map { $^þ * 10 }, ((1..10).pick(5) X/ (3..6).pick(5));
say @result;

@result = ((1..10).pick(5) X/ (3..6).pick(5)).map( { $^þ * 10 } ).sort;
say @result;
