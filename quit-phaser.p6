#!/usr/bin/env perl6

use v6;

react {
    whenever IO::Socket::Async.listen('0.0.0.0', 3000) -> $conn {
        whenever $conn.Supply.lines -> $line {
            $conn.print: qq:heredoc/END/;
                HTTP/1.1 200 OK
                Content-Type: text/html; charset=UTF-8
                Content-Encoding: UTF-8

                <html>
                <body>
                    <h1>Hello World!</h1>
                    <p>{ $line }</p>
                </body>
                </html>
                END
            $conn.close;
        }
    }
    CATCH {
        default {
            say .^name, ': ', .Str;
            say "handled in $?LINE";
        }
    }
}
