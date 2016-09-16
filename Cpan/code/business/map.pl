use common::sense;
use Data::Dumper;

my $hash_ref = {
    hoge_ref => '1',
    fuga_ref => '2',
    foo_ref  => '3',
    bar_ref  => '4',
};

my %hash = (
    hoge => '1',
    fuga => '2',
    foo  => '3',
    bar  => '4',
);

my @array = qw(1 yamada 2 hanako);
my %test;
%test = @array; 

# aout map
# 1 ) リストのアイテムを1つずつ$_に格納する
# 2 ) 構文は式形式とブロック形式
# 3 ) map式はテスト式ではなく変換式
# 4 ) $_ は何回でも使え、同じ値が入る
