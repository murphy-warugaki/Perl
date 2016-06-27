use common::sense;

chomp ($_ = <STDIN>);
 if(/yes/i){
 print "success!!";
}

my $names = 'Murphy or Barney';
if ( $names =~ m/(\w+) (and|or) (\w+)/ ){
say "I saw $1 and $2"; #$1と$2は()に反応する
}

