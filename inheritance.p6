#!/usr/bin/env perl6

use v6;

class Employee {
    has $.salary;
}

class Programmer is Employee {
    has @.known_languages is rw;
    has $.favorite_editor;
    
    method code_to_solve( $problem ) {
        return "Solving $problem using $.favorite_editor in "
        ~ $.known_languages[0];
    }
}

my $programmer = Programmer.new(
    salary => 100_000,
    known_languages => <Perl5 Perl6 Erlang C++>,
    favorite_editor => 'vim'
);

say $programmer.code_to_solve('halting problem'), " will get ", $programmer.salary(), "\$";
