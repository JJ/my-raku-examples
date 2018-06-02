#!/usr/bin/env perl6

use v6;

class Task {
    has      &!callback;
    has Task @!dependencies;
    has Bool $.done = False;

    # Normally doesn't need to be written
    multi method new(&callback, *@dependencies) {
        return self.bless(:&callback, :@dependencies);
    }
    
    # BUILD is the equivalent of a constructor in other languages
    submethod BUILD(:&!callback, :@!dependencies) {}

    method add-dependency(Task $dependency) {
        push @!dependencies, $dependency;
    }

    method perform() {
        unless $!done {
            .perform() for @!dependencies;
            &!callback();
            $!done = True;
        }
    }
}

my $shopping-list = Task.new( callback => { say "No more"},
                              dependencies => () );
$shopping-list.perform;
say $shopping-list.perl;

my $eat =
  Task.new({ say 'eating dinner. NOM!' },
     Task.new({ say 'making dinner' },
       Task.new({ say 'buying food' },
         $shopping-list,                   
         Task.new({ say 'making some money' }),
         Task.new({ say 'going to the store' })
       ),
       Task.new({ say 'cleaning kitchen' })
     )
  );

say $eat.perl;
$eat.perform();
say $eat.perl;
