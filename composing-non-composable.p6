#!/usr/bin/env raku

enum Norse-gods <Þor Oðinn Freija>;

say "Composalizable ", Norse-gods.HOW.archetypes.composalizable();

enum All-gods does Norse-gods <Ammon>;

say All-gods::<Oðinn>;

