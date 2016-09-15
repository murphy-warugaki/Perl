use common::sense;

use Test::More;
use Test::Pretty;

use Data::Dumper;

my $class = 'code::Test::lib::Model::Tech';
use_ok $class;

subtest 'test_name' => sub {
    my @list   = qw(Murphy Mori Ishida);
    my @result = $class->test(@list);

};

done_testing;
