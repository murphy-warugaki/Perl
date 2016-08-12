use common::sense;

use Data::Dumper;
use Test::More;
use Test::Pretty;

use Time::Piece ();

my $class = 'Time::Piece';
use_ok $class;

subtest 'epoch' => sub {
    my $epoch = Time::Piece->localtime->epoch;
    warn Dumper $epoch;
ok $epoch;
};
done_testing;
