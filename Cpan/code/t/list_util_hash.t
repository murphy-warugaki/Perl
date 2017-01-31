use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;
use Test::Deep;
use List::Util qw(pairs pairmap);

my %hash = (
    hoge => '1',
    fuga => '2',
    foor => '3',
    baar => '4',
);

my @array_int = (1, 11, 222, 3333);
my @array_str = qw(1 aiueo 2 hello 3);

subtest 'Pairs' => sub {
    # 配列を二つに分けるらしい。奇数なら相方はundefさん
    # scalarの場合、最後のペアが返るらしい
    # オブジェクトで返ってくるらしい
    # hashだと奇数が配列のオブジェクトになって返るらしい
    # forで回して->keyみたいな感じでkeyとvalueが使えるらしい 

    my $pairs = pairs @array_str;

    isa_ok $pairs , 'List::Util::_Pair';
};

subtest 'Pairmap' => sub {
    # 配列を二つに分けるらしい。奇数なら相方はundefさん
    # scalarの場合、最後の値がリターンされる
    # リストの配列リファレンス
    # hashだと偶数がリストの配列リファレンスになって返るらしい

    my @pairs = pairmap { [ $a, $b ] } @array_str;
    cmp_deeply @pairs->[0], [ 1, 'aiueo' ];
    warn Dumper @pairs->[1]->[1];
};

# pairkeysは$aが入る
# pairvaluesは$bが入る

done_testing;
