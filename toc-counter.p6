#!/usr/bin/env perl6

use v6;

role TOC-Counter {
    has Int @!counters is default(0);
    method Str() { @!counters.join: '.' }
    method inc($level) {
        @!counters[$level - 1]++;
        @!counters.splice($level);
        self
    }
}
 
my Num $toc-counter = NaN;     # don't do math with Not A Number 
say $toc-counter;              # OUTPUT: «NaN␤» 
$toc-counter does TOC-Counter; # now we mix the role in 
$toc-counter.inc(1).inc(2).inc(2).inc(1).inc(2).inc(2).inc(3).inc(3);
put $toc-counter / 1;          # OUTPUT: «NaN␤» (because that's numerical context) 
put $toc-counter;              # OUTPUT: «2.2.2␤» (put will call TOC-Counter::Str) 
