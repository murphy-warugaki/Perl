use common::sense;
use Data::Dumper;

my $hoge = 31;
my @hoge = (1..$hoge);

for (@hoge){
warn Dumper $_;


}
