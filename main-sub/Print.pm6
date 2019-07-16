unit class Print;

has %.command = %(
    command => 'print',
    routine => sub { .print for 1..10 },
    help    => 'print numbers 1 through 10.'
);
