#!/usr/bin/env perl6

class can't-create {
    method CREATE { return "þor is mighty";}
}

say can't-create.CREATE();

grammar cant-create {
    token TOP { <create> | <DESTROI> }
    token create { 'CREATE' }
    token DESTROI { 'DESTROY!'}
}

say cant-create.parse('CREATE');

my grammar Test { 
    rule TOP { <CREATE> } 
    token CREATE { "CREATE" }
};
say Test.parse: "CREATE"; 
