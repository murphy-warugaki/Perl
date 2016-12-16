use common::sense;
use Data::Dumper;

my $hash_ref = {
    hoge => 'NULL',
    fuga => 1,
    foo => 'MUGE',
};

warn Dumper $hash_ref;
