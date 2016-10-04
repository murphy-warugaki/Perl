use common::sense;
use Data::Dumper;

# 結合 1-2
my $join_1 = 'aaaa' . 'bbbb';
my $join_2 = join(',', 'nishimoto', 'shinya', 'ikemen');
my $join_3 = 'ke';

# 分割
my @record = split /,/, 'ikemoto,susumu,ikemen';

# 長さ
my $length = length $join_1;

# 切り出し
my $substr = substr 'hogehoge', 2, -1; # return gehog 
my $substr_2 = substr 'fugafuga', 4, 2; # return fu 

# 検索
my $search = index $record[2], $join_3; # 見つかったら位置がreturn なかったら-1
