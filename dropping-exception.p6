#!/usr/bin/env raku

for <a b> -> $foo {
    spurt "a/b", "bar";
}
say "Gotcha";
for <a b>  {
    spurt "a/b", "bar";
}
