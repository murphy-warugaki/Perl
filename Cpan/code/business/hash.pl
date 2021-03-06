use common::sense;
use Data::Dumper;

# declaration hash
my %names;

# how to set in the hash
# 01
%names = (
    murphy    => 150,
    nishimoto => 220,
);

# 02 代入
my %nickname;
$nickname{shinya} = '560';

# how to access to hash 参照
# we need () in for loop. ()は必要 
for (keys %names) {
    print "My name is $_ . He has $names{$_}\n";
}

# 3 ) 値の取得
my @values = values %names; # 150 220

# 4 ) キーの存在確認
@values = %nickname if exists $nickname{shinya}; # values は上書きされる

delete $names{murphy}; # murpshy が消えてnishimoto だけが残る
