#!/usr/bin/env raku

grammar Bar { 
    token TOP { <meta>* }
    token metastart { '#' }
    token meta { <metastart> [ <name> | <date> ] }
    token name {  \w*  }
    token date { \d**6 }
}

say Bar.parse( "#Hey" );
say Bar.parse( "#3333" );
