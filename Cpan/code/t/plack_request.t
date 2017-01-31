use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;
use Test::Deep;

use Plack::Request;

my $class = "Plack::Request";
use_ok $class;

subtest 'Basic type' => sub {
    my $env = { hogehoge => 'fugafuga' };
    my $req = Plack::Request->new($env);

    # PlackRequest objectの env dataを生成
    isa_ok $req, $class;
    
    # statusのhashrefを生成
    my $res = $req->new_response(200);
    is $res->status, 200;

    # psgiで使えるレスポンスの形を生成する
    my $return = $res->finalize;
    cmp_deeply $return, [ 200, [], [] ];
};

done_testing;
