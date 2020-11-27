#!/usr/bin/env raku

my @nested-list := ['+', 
    ['*',
        2,
        ['$','v']
    ],
    1
                   ];
say @nested-list.^name;
