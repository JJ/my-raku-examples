#!/usr/bin/env raku


my @mapper = [['1a','1b','1c'],['2a','2b','2c'],['3a','3b','3c']];
say % .classify-list: @mapper, 1,2,1,1,2,0;

