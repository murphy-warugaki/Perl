use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;
use Text::CSV_XS;
use IO::File;

my $class = 'Text::CSV_XS';
use_ok $class;

use IO::File;

subtest 'example' => sub {

    #binary => 1 の場合、日本語に対応できる
    my $csv                 = Text::CSV_XS->new({ binary => 1, });
    my $column              = '';
    my $sample_input_string = '"I said, ""Hi!""",Yes,"",2.34,,"1.09"';

    if ($csv->parse($sample_input_string)) {
        my @fields = $csv->fields;
        my $count  = 0;
        for $column (@fields) {
            print ++$count, "=>", $column, "\n";
            warn Dumper $column;
        }
        print "\n";
    }
    ok $csv;
};

subtest 'I/O' => sub {
    my $csv = Text::CSV_XS->new({ binary => 1, });
    my $fh = IO::File->new('< ../code/first_perl/test.dat') or die $!;

    while (my $row = $csv->getline($fh)) {
        print map({ "[$_]\t" } @$row), "\n";
    }
    ok $fh;
};

subtest 'Test csv->say' => sub {
    my $csv = Text::CSV_XS->new({ binary => 1, });
    my $hoge_fuga = {
        hoge => 'hoge',
        fuga => 'fuga',
    };
    my @value = ($hoge_fuga->{hoge}, $hoge_fuga->{fuga});

    my $foo = $csv->say(*STDOUT, \@value);
    ok $foo;
};
done_testing;
