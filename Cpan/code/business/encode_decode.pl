use strict;
use warnings;
use utf8;
use Data::Dumper;



my $hoge = 'ああああ';
my $fuga = <<HTML;
hoge
ああああ
HTML

warn Dumper $fuga;
