use common::sense;
use Data::Dumper;

my $app = sub {
    my $env = shift;
    warn Dumper $env;
    return [ 200, [ 'Content-Type' => 'text/plain' ], ['Hello,world'], ];
};

