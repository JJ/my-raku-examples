#!/usr/bin/env perl6

use Encode;
say Encode::decode('latin1', Buf.new("¡Aivá!"));
