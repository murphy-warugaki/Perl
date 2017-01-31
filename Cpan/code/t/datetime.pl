use common::sense;
use Data::Dumper;
use Date::Time;
use Time::Piece ();

my $hash = { answerd_at => '2000-01-01 00:00:00' };
my $tp = Time::Piece->strptime("$hash->{answerd_at}", '%Y-%m-%d %T');

#my %hoge = ();
my $hoge->{hogehoge_at} = $tp->epoch;
warn Dumper $hoge;
