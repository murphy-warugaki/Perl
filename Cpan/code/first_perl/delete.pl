use common::sense;
use Data::Dumper;

my $self = {
    session => {
        app_mid      => 'hogeho-1',
        app_id       => 234,
        extra_params => {
            sop_hogehoge => 'hogehoge',
            sop_fugafuga => 'fugafuga'
        },
    },
    session_2 => {
        hogehoge_app_mid     => 'hogeh-1222222',
        hogehoge_app_id      => 234,
        hoghoge_extra_pramas => {
            hogeho_sop_hogehoge => 'hogehoge',
            hogehoe_sop_fugafuga => 'fugafuga'
        },
    }
};

my $test = delete $self->{session}->{extra_params};
warn Dumper $test;
warn Dumper $self->{session};
