use common::sense;
use Data::Dumper;

#chomp ($_ = <STDIN>);
# if(/yes/i){
# print "success!!";
#}

my $names = 'Murphy or Barney';
if ($names =~ m/(\w+) (and|or) (\w+)/) {
    #say "I saw $1 and $2"; #$1と$2は()に反応する
}

my $query = {};
$query->{id}           = 2;
$query->{name}         = 'susumu';
$query->{'user.age'}   = 20;
$query->{'user.local'} = 'japan';

for (keys %$query) {
    $_  = "fs_research." . "$_" if $_ !~ m|(\w+)[.](\w+)|;
warn Dumper $query->{$_};
}

while (my($key, $value) = each %$query){
   $key = "fs_research."."$key" if $key !~ m|(\w+)[.](\w+)|;
warn Dumper $query;
}
