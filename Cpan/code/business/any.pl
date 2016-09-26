use common::sense;
use List::Util qw(any);

my @array = (10, 40, undef, 50);

if (any { !defined($_) } @array) {
    print "テスト成功!!\n";
}

