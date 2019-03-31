#!/usr/bin/env perl6

use v6;

sub MAIN(
  Str   $file where *.IO.f = 'file.dat',  #= an existing file to frobnicate
  Int  :size(:$length) = 24,                     #= length needed for frobnication
  Bool :$verbose,                         #= required verbosity
) {
    say $length if $length.defined;
    say $file   if $file.defined;
    say 'Verbosity ', ($verbose ?? 'on' !! 'off');
}
