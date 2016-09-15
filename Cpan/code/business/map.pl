use common::sense;
use Data::Dumper;

my $hash = {
    hoge => '1',
    fuga => '2',
    foo  => '3',
    bar  => '4',
};

warn Dumper map {'murphsy.'. $_ => $hash->{$_},} keys %$hash;

# aout map
# 1 ) リストのアイテムを1つずつ$_に格納する
# 2 ) 構文は式形式とブロック形式
# 3 ) map式はテスト式ではなく変換式
# 4 ) $_ は何回でも使え、同じ値が入る
