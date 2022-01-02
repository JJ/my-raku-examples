unit module Var;

our $var  is export;
INIT {
    $var = %*ENV<var>;
    say "Setting var $var";
}
