unit module Bar;

our $bar  is export;

BEGIN {
    $bar = %*ENV<bar>;
    %*ENV<bar-set> = True;
    say "Setting bar $bar";
}
