use common::sense;
use Data::Dumper;
use List::Util qw(first max maxstr minstr sum reduce any);
use Test::More;
use Test::Pretty;

# forをいちいち回さなくてもよくなる
# 全部リストで返ってくるから@で受け取ると1 or 0が返る

# ex )
my @array_int   = (89, 90, 20, 101, 450, 59);
my @array_str   = qw (hoge fuga foo baa murphy zoo aiu);
my @array_empty = ();
my %hash        = (
    hoge => '1',
    fuga => '2',
    foo  => '3',
);

subtest 'First' => sub {    # first 最初に条件に一致したものを返す
    my $over = first { $_ > 100 } @array_int;

    is $over, 101;
};

subtest 'Max' => sub {      # max 最も値の大きいものを返す
                            # stringの場合は一番後ろのものが返る
                            # 反対はmin
    my $over     = max @array_int;
    my $over_str = max @array_str;

    is $over,     450;
    is $over_str, 'aiu';
};

subtest 'Maxstr and Minstr' => sub {

    # maxstr 文字列として最もアルファベット順が後ろのものが返る
    # 反対はminstr

    my $over_str = maxstr @array_str;
    my $min_str  = minstr @array_str;

    is $over_str, 'zoo';
    is $min_str,  'aiu';
};

# shuffle：ランダムにリストを返す

subtest 'Sum' => sub {    # sum リストの合計値を返す
                          # stringの場合は計算されない
    my $over     = sum @array_int;
    my $over_str = sum @array_str;    # 0が返る

    is $over,
          $array_int[0]
        + $array_int[1]
        + $array_int[2]
        + $array_int[3]
        + $array_int[4]
        + $array_int[5];
};

subtest 'Any' => sub {                # any grepかこれを使うと簡単に使えるらしい
    my $test = any { length > 5 } @array_str;
    is $test, 1;                      # retrun boolen
};

# all：全て満たすもの。boolen
# notall：全て満たさない。boolen

done_testing;
