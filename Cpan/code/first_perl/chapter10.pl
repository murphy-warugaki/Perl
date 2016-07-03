use common::sense;

my $secret = int(1 + rand 100);

#randで100を生成すると、99.99ができる。そこに1を足してintで整数化すると1-100の乱数ができる。

while(1){ #無限ループを作る
	print "Please enter a guess from 1 to 100: ";
	chomp(my $guess = <STDIN>);
	if($guess =~ /quit|exit|\A\s*\z/i){
		print "Sorry you gave up. The number was $secret.\n";
		last;
	}elsif ($guess < $secret){
		print "Too small. Try again!\n";
	}elsif ($guess == $secret){
		print "That was it !\n";
		last;
	}else {
		print "Too Large. Try again!\n";
	}
}

