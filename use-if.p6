#!/usr/bin/env perl6

use v6;
use if;

use Foo:if(True);
use Bar:if(False);

say hello();
