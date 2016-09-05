use common::sense;
use Data::Dumper;

my %address = (
    "鈴木" => "東京都千代田区",
    "山田" => "東京都葛飾区",
    "本田" => "愛知県名古屋市",
    "遠藤" => "大阪府堺市"
);

my @valuelist  = values(%address);
my $valuecount = values(%address);

print "要素数は $valuecount です。¥n";

for (my $i = 0; $i < $valuecount; $i++) {
    print "$valuelist[$i]¥n";
}

