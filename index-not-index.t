#!/usr/bin/env perl6

=begin overview

Avoid index entries that do not include the search term, this way C<X<whatever|search term>>

=end overview

use v6;
use Test;
use lib 'lib';
use Test-Files;

# Every .pod6 file in the Type and Language directory.
my @files = Test-Files.files.grep({$_.ends-with: '.pod6'}).grep(* ~~ /Type | Language/);

plan +@files;

for @files -> $file {
    my @lines;
    my Int $line-no = 1;
    my @non-index;
    my @links = $file.IO.lines.grep( * ~~ / X \< <-[ | ]>+ \> /);
    @non-index.append( @links) if @links;
    if @non-index {
        flunk "$file uses non-linked links « " ~ @non-index.join("\n\n") ~ " »";
    } else {
        pass "$file return types are ok";
    }
}
