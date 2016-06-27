use common::sense;
use Data::Dumper;

my @names = qw{murphy shunya shinya murphy warugaki shinya shigeki murphy};

my %count;

$count{$_}++ foreach @names;
#この構造はフィルターにも使えるし
#リスト中にどんな要素があって、各要素が何回現れたかがわかる
print Dumper $count{murphy};


