package code::Test::lib::Controller::Tech;
use common::sense;

use code::Test::lib::Model::Tech;
use Data::Dumper;

my @member = qw(
    Murphy
    Taiki
    Ishida
    Aeichan
);

my $result = code::Test::lib::Model::Tech->test(@member);

1;

