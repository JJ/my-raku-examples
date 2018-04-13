#!/usr/bin/env perl6

use v6;

my $ak = '7111ac873c9dcd5fc335ded47630d050';
my $st = '1523451601875';
my $ifo = 'true';
my $uu = "15778787898988090";

class Stay {
  has $.ak  is rw = '7111ac873c9dcd5fc335ded47630d050';
  has $.uu  is rw;
  has $.ifo is rw;
  has $.st  is rw;

  method gist() {
    return '{"ev":"app","ak":"\qq[$!ak]","uu":"\qq[$!uu]","ifo":"\qq[$!ifo]","st":"\qq[$!st]"}':
  }
}

say Stay.new(uu => $uu, ifo => $ifo, st => $st); 
