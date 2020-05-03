#!/usr/bin/env raku

use Template::Classic;

my &render-list := template :($title), q:to/HTML/;
Say <%= $title %>
HTML

my @seq = render-list( "<h1>Hey</h1>" );

for ^3 -> $i {
    say $i, " → ", @seq[$i];
}
