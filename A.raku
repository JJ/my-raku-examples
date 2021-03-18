constant MAXVALUE = 1000_000;
subset B of Int where { 0 < * < MAXVALUE };

unit class A;

has B $.c;

method gist() {
    "$!c";
}
