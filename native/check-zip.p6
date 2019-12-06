#!/usr/bin/env raku

use NativeCall;
enum ZIP ( ZIP_CREATE => 1, ZIP_EXCL => 2, ZIP_CHECKCONS => 4, ZIP_TRUNCATE => 8, ZIP_RDONLY => 16 );
class zip_t is repr('CStruct'){};

enum open-file ( O_RDONLY => 0,  O_WRONLY => 1,  O_RDWR => 2,  O_ACCMODE => 3 );

sub zip_open( Str $path, int $flags, int errorp is rw ) returns zip_t is native('libzip',v2.1.0) {*}

my int $errorp;

my zip_t $zipped-file = zip_open( "c-programs.zip", O_RDONLY, O_RDONLY ); 

