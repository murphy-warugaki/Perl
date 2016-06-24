use strict;
use warnings;
use utf8;

#１番、文字リストを1行に1個ずつ入力の終わりになるまで読み込んで、そのリストを逆順にしてみる

$, = " ";
my @names = qw(yamagishi soncyo nagano itou murphy);

my @re_name = reverse(@names);
print "@re_name\n";

#２番、数リストを読み込み、キーを入れてバリューで返す

sub func{
 my $num = $_[0];
 print "$names[$num-1]\n";
}
func(4);

#3番、読み込んだ文字列を順番に返す
sub func2{
 my @name = @_;
 my @new_name = sort @name;
 print "@new_name\n";
}
func2('oota', 'mori', 'abe');

