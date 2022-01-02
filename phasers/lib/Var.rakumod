unit module Var;

our $var  is export;
BEGIN {
    $var = %*ENV<var>;
    say "Setting var $var";
}
