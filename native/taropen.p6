#!/usr/bin/env raku

use NativeCall;

enum open-file ( O_RDONLY => 0,  O_WRONLY => 1,  O_RDWR => 2,  O_ACCMODE => 3 );

sub gzopen_frontend( Str $path, int32 $oflags, int32 $mode ) is native('tar') returns int {*}

my int32 $result = gzopen_frontend( "c-programs.tgz", O_RDONLY, O_RDONLY ); 

