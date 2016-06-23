use strict;
use utf8;
use warnings;

my @array = qw(a 2 3 4 bbb);
print @array;
print "@array\n";

#第2問printfを使おう！
 my @something = qw(my name is murphy);
print "1234567890" x 2 . "\n";
for (@something){
printf "%20s\n", $_;
}

#第3問関数使ってprintfを使おう！

whatsname(10, 'this', 'is', 'the', 'MANZAI');

sub whatsname{
 print "1234567890" x 3 . "\n";
 my $length = shift;
 for (@_){
 printf "%$length" . "s\n", $_;
}
}
