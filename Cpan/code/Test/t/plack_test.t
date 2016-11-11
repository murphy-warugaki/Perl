use common::sense;
use Data::Dumper;

use Test::More;
use Test::Pretty;

use Plack::Test;
use HTTP::Request::Common;

my $class = 'Plack::Test';
use_ok $class;

subtest 'simple 00 interface' => sub {
    my $app = sub {
        return [ 200, [], ["Hello"] ];
    };
    my $test = Plack::Test->create($app);

    my $res = $test->request(GET "/");

    is $res->content, "Hello";
    isa_ok $res, 'HTTP::Response';
};

subtest 'traditional named params' => sub {

    test_psgi
app => sub {
        my $env = shift;

        warn Dumper $env;
        return [ 200, [ 'Content-Type' => 'text/plain' ], ["Hello World"] ],
        },
client => sub {
        my $cb  = shift;

        warn Dumper $cb;
        my $req = HTTP::Request->new(GET => "http://localhost/hello");
        my $res = $cb->($req);

        like $res->content, qr/Hello World/;
        };
};
done_testing;
