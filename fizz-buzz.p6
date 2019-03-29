#!/usr/bin/env perl6

use v6;

(1..20).map( { ($_ == 15)??"FizzBuzz"!!$_ } ).duckmap( -> Int $_ { ($_ %% 5 )??"Fizz"!!$_} ).duckmap( -> Int $_ { ($_ %% 3 )??"Buzz"!!$_} ).say
