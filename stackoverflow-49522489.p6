
use v6;
use DBIish;

constant DB = 'budgetpro.sqlite3';
my $dbh = DBIish.connect('SQLite', database => DB);

#$dbh.do('drop table if exists Essential, Savings, Personal');

sub create-schema {
    $dbh.do(qq:to/SCHEMA/);
        create table if not exists Essential(
            id          integer primary key not null,
            name        varchar not null,
            quantity    integer not null,
            price       numeric(5,2) not null,
            description varchar not null,
            date        timestamp default (datetime('now'))
        );
    SCHEMA
}

create-schema;

class Item {
    has $!table = 'Essential';
    has $.name;
    has $.quantity;
    has $.price;
    has $.description is rw;
    has $.timestamp;
    has Str $.notes is rw;
    method notes() { "$!notes\n" };

    method insert($name, $quantity?, $price?, $description?, $timestamp?) {
        my $sth = $dbh.prepare("insert into Essential(name,quantity,price,description) values (?,?,?,?)");
        $sth.execute($name, $quantity, $price, $description);

        say "Inserted $name, $quantity, $price, $description";
    }
}

class Essential is Item {
    method greet($me: $person) {
        say "Hi, I am $me.^name(), nice to meet you, $person";
    }
}


Item.new().insert("Cheese", 2, 1.99, 'Block of cheddar');

