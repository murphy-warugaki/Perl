use strict;
use warnings;
use utf8;


my %names = ("shinya"=>150, "bunta"=>220, "rintarou"=>998);
foreach my $name (keys(%names)){
 print "My name is $name has $names{$name}\n";
}

my %values = ("today"=>100, "yesterday"=>200, "tomorrow"=>300);
for (keys %values){
 print "temputure is $values{$_} and $_\n";
}
