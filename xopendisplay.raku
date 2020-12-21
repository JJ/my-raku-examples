use NativeCall;

class Display is repr('CStruct') { HAS Str $.DisplayPtr };

# libX11.so --> X11
sub XOpenDisplay(str $name = ':0') returns Pointer is native('X11') { * }
sub XDefaultScreen(Display $) returns int32 is native('X11') { * }

my Display $display = nativecast(Display,XOpenDisplay())
    or die "Can not open display";
 
my int $screen = XDefaultScreen($display);

print "display = <" ~ $display ~ ">\n";
print "screen =  <" ~ $screen  ~ ">\n";
