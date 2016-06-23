use strict;
use utf8;
use warnings;

my %family;
$family{'fred'} = 'Hello';
$family{'barney'} = 'Worrd';

for my $person (qw<barney fred>){
 print "I've heard of $person $family{$person}.\n";
}

#ユーザーから名前を入力してもらい、その人の性を出力するプログラム
my %names = (
  shinya => 'nishimoto',
  miki => 'hashitani',
  tanuki => 'ponnpoko');

print "Enter first name";
chomp(my $name = <STDIN>);
print "Ur choice is $name , that peron' last name is $names{$name}.\n";

#一連の単語をファイルの終わりまで読み込み、各単語の出現回数を見る

my @input;
my %count;
my $output;

#文字を入力
chomp(@input = <STDIN>);
#
for $output (@input){
 $count{$output} += 1;
}
 for $output (keys %count){
 print "$output was seen $count{$output} times.\n";
}
