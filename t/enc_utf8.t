#!/usr/bin/perl

use perl5i;

use utf8;

use Test::More;

my %greetings = (
    Laotian     => [
                    'ສະບາຍດີຊາວໂລກ',
                    39,
                ],
    Japanese    => [
                    'こんにちは',
                    15,
                ],
    Swedish     => [
                    'Hej Värld',
                    10,
                ],
    Chinese     => [
                    '世界您好',
                    12,
                ],
);

for my $lang (keys %greetings) {
    is( length $greetings{$lang}->[0]->enc_utf8, $greetings{$lang}->[1],
        "Greeting in $lang has $greetings{$lang}->[1] octets.");
    say $greetings{$lang}->[0]->enc_utf8;
}

done_testing();