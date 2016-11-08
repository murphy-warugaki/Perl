use common::sense;
use Data::Dumper;

my $hoge = 0;

given ($hoge) {
    when (1) { print 'hogehoge' }
}

my $fuga = { fuga => 'fugafuga' };
warn Dumper $fuga;
