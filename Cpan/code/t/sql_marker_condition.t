use common::sense;

use Test::More;
use Test::Pretty;
use Test::Deep;
use SQL::Maker::Condition;
use Data::Dumper;

use_ok 'SQL::Maker::Condition';

subtest nomal_usage => sub {

    # add row
    my $cond = SQL::Maker::Condition->new;
    $cond->add(hoge => 1);
    $cond->add(fuga => 2);
    $cond->add(foo  => 3);

    my $where = $cond->as_sql;
    my @bind  = $cond->bind;

    is $where, '(hoge = ?) AND (fuga = ?) AND (foo = ?)';
    cmp_deeply \@bind, [ 1, 2, 3 ];
};

done_testing;
