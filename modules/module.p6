#!/usr/bin/env raku

module Foo {
  sub greeting ($name = 'Camelia') { "Greetings, $name!" }
  our sub loud-greeting (--> Str)  { greeting().uc       }
  sub friendly-greeting is export  { greeting('friend')  }
}

import Foo;

say Foo::loud-greeting;  # OUTPUT: «GREETINGS, CAMELIA!␤» 
say friendly-greeting;   # OUTPUT: «Greetings, friend!␤» 
