package code::Test::lib::Model::Tech;
use common::sense;
use Data::Dumper;

use code::Test::lib::Util qw(FRESH_16);

my $list = FRESH_16;
warn Dumper $list;

sub test {
    my $class  = shift;
    my @member = @_;

    for my $key (@member) {
        $result{$key} = $data->{$key}
            if $key eq $list;
    }
    \%result;
}

1;
