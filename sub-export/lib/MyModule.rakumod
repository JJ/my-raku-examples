class MyModule::Class { }

sub EXPORT {
    Map.new:
      '$var'      => 'one',
      '@array'    => <one two three>,
      '%hash'     => %( one => 'two', three => 'four' ),
      '&doit'     => sub { say 'Greetings from exported sub' },
      'ShortName' => MyModule::Class
}
