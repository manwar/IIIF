use strict;
use Test::More 0.98;
use IIIF::Request;

my @tests = (
    max => 'full/max/0/default',
    42  => 'full/max/42/default',
    'square/1,' => 'square/1,/0/default',
);

while (@tests) {
    my ($req, $expect) = splice @tests, 0, 2;
    is(IIIF::Request->new($req)->as_string, $expect, "$req = $expect");
}

done_testing;