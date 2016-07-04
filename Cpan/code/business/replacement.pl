use strict;
use warnings;
use utf8;

open(my $in, "<", "test.dat") or die("could  not open file.");

while(<$in>){ 
	s/abc/ABC/; #$_ =~省略できる

	s/(abc|def)/\U$1/; #Uは大文字に変換

	s/(DEF|GHI)/\L/; #Lは小文字に変換

	if (/[A-Z]/){
		print $_;
	}
}

close($in);
