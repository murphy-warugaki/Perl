use strict;
use utf8;
use warnings;

#第1問、足した数が表示される実装
my @fred = qw ( );
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";

sub total{
 my $max = 0;
for (@_){
 $max += $_;
}
 $max;
}

#第2問、1..1000を足した数が実装されるプログラム
my @second_problem = (1..1000);
print total(@second_problem);

#第3問、数のリストを受け取る。
#(1)平均よりも大きな数を返すメソッドを作る

my @num = above_average(1..10);
print "\@num is @num\n";
print "(should be 6 7 8 9 10)\n";

sub average{
 if (@_ == 0){
 undef;
 }else{
 my $count = @_;
 #print $count;
 my $max = total(@_);
 my $average = $max / $count;
}
}
#average(1..10);

sub above_average{
 my $a1 = average(@_);
 my @answer;
 for my $candicate (@_){
 $candicate > $a1 ? push @answer , $candicate : undef;
}
 @answer;
}

#第4問、人の名前を受け取りそれを保持し、最後の引数をとってくる
greet( "Abe-san" ); # Hi name you are the first one here
greet( "Fujikawa-san" ); # Hi name fred is also here.

sub last_greet{
 my $name2 = @_;
 my @names;
 push @names, $name2;
 print "@names\n";
}

my $last_greet = undef;
sub greet{
 my $name = shift;
 print "Hi $name\n";
 my @names1 = last_greet($name);
 print "@names1\n";
}
