#!/usr/bin/env raku

use NativeCall;

class zip_t is repr('CStruct'){};

enum ZIP ( ZIP_CREATE => 1, ZIP_EXCL => 2, ZIP_CHECKCONS => 4, ZIP_TRUNCATE => 8, ZIP_RDONLY => 16 );

sub zip_open( Str $path, int $flags, int errorp is rw ) returns zip_t is native('libzip',v2.1.0) {*}

my int $errorp;

my zip_t $zipped-file = zip_open( "c-programs.zip", ZIP_RDONLY, $errorp ); 

