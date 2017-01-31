use common::sense;

use Data::Dumper;
use Test::More;
use Test::Pretty;
use Time::Piece ();
use Time::Seconds;

my $class = 'Time::Piece';
use_ok $class;

subtest 'fuga' => sub {
my $hoge = '2016-01';
my $fuga = Time::Piece->strptime($hoge, '%Y-%m-%d');
warn Dumper $fuga->mday;

};

done_testing;
