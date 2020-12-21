use NativeCall;

class Display is repr('CPointer') {};

# libX11.so --> X11
sub XOpenDisplay(str $name = ':0') returns Display is native('X11') { * }
sub XDefaultScreen(Str $) returns int32 is native('X11') { * }
sub XDisplayString(Display $display) returns Str is native('X11') { * }

my $display = XOpenDisplay() or die "Can not open display";
my Str $displayStr = XDisplayString($display);
my int $screen = XDefaultScreen( $displayStr );

print "display = <" ~ $displayStr ~ ">\n";
print "screen =  <" ~ $screen  ~ ">\n";
