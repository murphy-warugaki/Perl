package main;
use common::sense;
use Data::Dumper;

# 1 ) 値があるかどうかの判定
my $num = 1;
my $num_2;
print $num   if defined $num;
print $num_2 if defined $num_2;

sub hoge {
    my ($req, $arg) = @_;

}

my $req = {
    env => {
        murphy   => 'nishimoto',
        fugafuga => 'hogehoge',
        foo      => 'bar',
    }
};

hoge(
    $req => {
        partner_app        => 'hoge',
        partnre_app_member => 'fuga',
    },
);

1;
