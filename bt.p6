#!/usr/bin/env perl6

try die "Something bad happened";
if ($!) {
    print $!.backtrace;
}

try {
    die [404, 'File not found']; # throw non-exception object
}

print "Got HTTP code ", $!.payload[0],          # 404
" and backtrace →", $!.backtrace;
