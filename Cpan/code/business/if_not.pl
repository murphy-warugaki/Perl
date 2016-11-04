use common::sense;
use Data::Dumper;

use constant {
    ACTIVE   => 1,
    INACTIVE => 0,
};

my $intage_respondent;

$intage_respondent->{status_flag} = 0;

print 'hogehoge' if not $intage_respondent->{status_flag} == ACTIVE;
