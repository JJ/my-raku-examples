#!/usr/bin/end raku

=begin data :key<Virtues>
Laziness
Impatience
Hubris
=end data

say 'The three virtues are​:';
say $=data<Virtues>;

say 'The second anti_Virtue is​: ', $=data[1];
