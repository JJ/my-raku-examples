#!/usr/bin/env perl6

sub can-turn-into(Str $þing, Any:U $type) {
    return so $þing.$type;
}

say can-turn-into("3", Int);
say can-turn-into("6.5", Int);
say can-turn-into("6.5", Num);
say can-turn-into("NotANum", Num);
