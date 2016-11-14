use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;

use Plack::Request;

my $class = "Plack::Request";
use_ok $class;

subtest 'Hoge' => sub {
    my $env = { hogehoge => 'fugafuga' };
    my $req = Plack::Request->new($env);
warn Dumper $req;
    # PlackRequest objectの env dataを生成
    isa_ok $req, $class;
};

done_testing;
