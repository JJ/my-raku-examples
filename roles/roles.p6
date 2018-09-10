#!/usr/bin/env perl6

module Foo { 
    role foo is export {

    }  
}

module Bar { 
    import Foo; 

    role bar is export does foo {

    }
} 

import Foo;
import Bar;

sub f(bar \k) { }

f(bar.new);
