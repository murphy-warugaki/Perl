use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;

use Plack::Request;

my $class = "Plack::Request";
use_ok $class;

#subtest 'Hoge' => sub {
    # これが必要 my $env = shift;
    #my $req = Plack::Request->new(GET);
    #warn Dumper $req;
#};

done_testing;
