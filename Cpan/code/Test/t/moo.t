package Test::T::Moo;
use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;

use Moo;

my $class = 'Moo';
use_ok $class;

subtest moo => sub {
    my $test = has name => (
        is       => 'ro',
        required => 1.
    );
};

done_testing;

