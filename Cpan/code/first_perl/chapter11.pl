use common::sense;
use DateTime;
use Data::Dumper;

#時間のobjを取得するには２つのやり方がある。
#DateTImeとTime::Piece

#(1)DateTime

my @t = localtime;
my $now = DateTime->new(
		year => $t[5] + 1900,
		month=> $t[4] + 1,
		day=> $t[3],
);

my $then= DateTime->new(
		year => $ARGV[0],
		month=> $ARGV[1],
		day=> $ARGV[2],
);


my $duration = $now - $then;
warn Dumper $duration;

my @units = $duration->in_units( qw(years months days));

printf "%d years, %d months, and %d days\n", @units;

