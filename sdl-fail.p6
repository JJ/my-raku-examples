#!/usr/bin/env perl6

use SDL2::Raw;
use lib 'lib';
use SDL2;

LEAVE SDL_Quit;

my int ($w, $h) = 800, 600;
my $window = init-window( $w, $h );
LEAVE $window.destroy;
my $renderer-info = init-renderer-info($window);

SDL_ClearError;

sdl-loop;

#-------------------- routines -----------------------------------------

#| Init window
sub init-window( int $w, int $h ) {
    die "couldn't initialize SDL2: { SDL_GetError }" if SDL_Init(VIDEO) != 0;
    SDL2::Window.new(
            :title("A test"),
            :width($w),
            :height($h),
            :flags(SHOWN)
            );
}

#| Init-renderer
sub init-renderer-info( $window ) {
     SDL2::Renderer.new( $window, :flags(ACCELERATED) ).renderer-info;
}


#| Rendering loop
sub sdl-loop () {
    my SDL_Event $event .= new;
    loop {
        while SDL_PollEvent($event) {
	    say $event.raku;
            given $event {
		when ( *.type == QUIT ) {
		    exit;
		}
	    } 
        }
    }
}


