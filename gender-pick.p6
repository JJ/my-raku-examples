#!/usr/bin/env perl6

use v6;

my %gender-ratio =  %(default => {
                             "Male" => 0.25,
                             "Female" => 0.75
                         },
                      alolan => {
                             "Male" => 0.25,
                             "Female" =>  0.75
                         }
                     );

my Mix $default = %gender-ratio<default>.Mix;

for ^10 {
    say $default.roll;
}
