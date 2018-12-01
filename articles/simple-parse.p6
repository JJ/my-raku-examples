#!/usr/bin/env perl6

use v6;

use lib <../grammars>;

use Santa-Letter;

say $Santa-Letter::pod.perl;
say Santa-Letter.parse("Dear Santa\nAll I want for Christmas\nIs you\n Mariah");
