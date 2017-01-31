use common::sense;
use Data::Dumper;

my $hoge = 'tmp/hoge/hogehoge/fuga.csv';
my @fuga = split /\//, $hoge;

my $foo;

for (@fuga) {
    my $moge = "\/" . $_;
    mkdir 0755, $foo;
    $foo .= $moge;
}

warn Dumper $foo;
