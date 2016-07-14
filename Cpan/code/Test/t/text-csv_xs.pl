use common::sense;

use Test::More;
use Test::Pretty;
use Data::Dumper;

my $class = 'Text::CSV_XS';
use_ok $class;

subtest 'scv' => sub {

    #my $csv = Text::CSV_XS->new({ binary => 1, always_quote => 1, sep_char => "\t", });
    #my $test = $csv->say(*STDOUT, [qw(id, name)]);
    my $csv = Text::CSV_XS->new;

    my $column              = '';
    my $sample_input_string = '"I said, ""Hi!""",Yes,"",2.34,,"1.09"';
    if ($csv->parse($sample_input_string)) {
        my @fields = $csv->fields;
warn Dumper @fields;
        my $count  = 0;
        for $column (@fields) {
            print ++$count, "=>", $column, "\n";
        }
        print "\n";
    }
};
done_testing;
