use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;
use Test::Deep;

use HTTP::Request;

subtest 'fugafuga' => sub {
    my $request = HTTP::Request->new(GET => 'http://www.hogehoge.com/');

    is_deeply $request,
    {
        _content => '',
        _method => 'GET',
        _uri => 'http://www.hogehoge.com/',
        _headers => {

        }
    };
    warn Dumper $request->{_headers};
};

done_testing;

