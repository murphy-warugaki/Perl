use common::sense;

use Test::More;
use Test::Pretty;

my $class = 'Text::CSV_XS';
use_ok $class;

subtest 'example' => sub {

    my $csv                 = Text::CSV_XS->new({ binary => 1, });
    my $column              = '';
    my $sample_input_string = '"I said, ""Hi!""",Yes,"",2.34,,"1.09"';
    if ($csv->parse($sample_input_string)) {
        my @fields = $csv->fields;
        my $count  = 0;
        for $column (@fields) {
            print ++$count, "=>", $column, "\n";
        }
        print "\n";
    }
    ok $csv;
};

subtest 'I/O' => sub {
    my $csv = Text::CSV_XS->new({ binary => 1, });
    my $fh = IO::File->new('< code/first_perl/test.dat') or die $!;
    my $row = $csv->getline($fh);
    is $$row[0], 'fred';
};
done_testing;
