use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;

use Router::Simple;

my $class = "Router::Simple";
use_ok $class;

my $router = $class->new();


done_testing;
