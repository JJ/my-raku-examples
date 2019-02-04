unit module somelib;

sub dump_value($symbol) is export {
    say $GLOBAL::x;
    say GLOBAL::("$symbol")
}
