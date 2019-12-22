#!/usr/bin/env raku

enum Norse-gods <Þor Oðinn Freija>;

class Norse-enum does Norse-gods {}

say Norse-enum.new.raku;
