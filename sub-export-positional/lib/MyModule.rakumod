# lib/MyModule

class MyModule::Class {}

sub EXPORT($short_name?) {
    Map.new: do $short_name => MyModule::Class if $short_name
}

sub always is export(:MANDATORY) { say "works" }

#import with :ALL or :DEFAULT to get
sub shy is export { say "you found me!" }
