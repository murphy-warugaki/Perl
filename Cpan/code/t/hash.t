use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;

subtest 'hash' => sub {
    my %hash;
    $hash{hogehoe} = 'fugafuga';
    ok %hash;
};

subtest 'ref_hash' => sub {
    my $hash;
    $hash->{foo} = 'baa';
    ok $hash;
};

done_testing;
