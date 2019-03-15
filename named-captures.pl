#!/usr/bin/env perl

use strict;
use warnings;
use v5.22;

"þor is mighty" =~ /is (?<iswhat>\w+)/n;
say $+{iswhat};
"12" =~ /(?| (?<a> \d+ ) | (?<b> \D+))/x;
say $+{a};
