#!/usr/bin/env perl6

use v6;

say sprintf '<%#.5o>', 0o12;     # RESULT: «<00012>␤»
say sprintf '<%#.5o>', 0o12345;  # RESULT: «<012345>␤»
say sprintf '<%#.0o>', 0;        # RESULT: «<>␤» # zero precision results in no output!
