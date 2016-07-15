use common::sense;

use Test::More;
use Test::Pretty;
use SQL::Maker::Condition;
use Data::Dumper;

subtest nomal_usage => sub {
    use_ok 'SQL::Maker::Condition';
    my $condition = SQL::Maker::Condition->new;
    warn Dumper $condition;
};

done_testing;
