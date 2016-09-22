use common::sense;
use Data::Dumper;

my %hash = {var => 'foo'};
{
local $hash{var} = 'ok';
print $hash{var};  #ok
}

print $hash{var};  #foo

