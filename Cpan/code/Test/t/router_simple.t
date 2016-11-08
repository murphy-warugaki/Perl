use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;

use Router::Simple;

my $class = "Router::Simple";

subtest 'hogehoge' => sub {
    use_ok $class;

    my $router = $class->new();
    warn Dumper $router->connect('/surveys/{format}', { command => 'RespondentSurveys,'});
};

done_testing;
