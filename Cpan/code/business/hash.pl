use common::sense;
use Data::Dumper;

# declaration hash
my %names;

# how to set in the hash
# 01
%names = (
    murphy => 150,
    nishimoto    => 220,
);

# 02
$names{shinya} = '560';

# how to access to hash
foreach my $key ( keys %names ) {
    print "My name is $key has $names{$key}\n";
}

my %values = ("today" => 100, "yesterday" => 200, "tomorrow" => 300);
for (keys %values) {
    print "temputure is $values{$_} and $_\n";
}
