#!/usr/bin/env ruby

$foo = 'bar';
puts "match 1!" if /bar/ === $foo;       # Regex match
puts "match 2!" if $foo === "bar";       # String match
puts "match 3!" if String === $foo;      # Class match

