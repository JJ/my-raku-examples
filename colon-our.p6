#!/usr/bin/env perl6

use v6;

grammar HasOur {
    token TOP {
        :our $our = 'þor';
        $our \s+ is \s+ mighty
    }
}

say HasOur.parse('þor is mighty');
say $HasOur::our;
