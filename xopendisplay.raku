use NativeCall;

class Display is repr('CStruct') { has Str $.DisplayPtr };

# libX11.so --> X11
sub XOpenDisplay(str $name = ':0') returns Display is native('X11') { * }
sub XDefaultScreen(Str $) returns int32 is native('X11') { * }

say XOpenDisplay().DisplayPtr;
# my $display = XOpenDisplay() or die "Can not open display";
 
#my int $screen = XDefaultScreen($display);

#print "display = <" ~ $display ~ ">\n";
#print "screen =  <" ~ $screen  ~ ">\n";
