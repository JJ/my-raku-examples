unit class Hello;


has %.command =  %(
    command => 'hello',
    routine => sub { return "Hello" },
    help    => 'print hello.'
);
