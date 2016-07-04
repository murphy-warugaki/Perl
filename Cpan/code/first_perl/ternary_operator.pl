use common::sense;

my $width = 25;

my $size =
($width > 10 && $width < 19) ? "small" :
($width > 20) ? "medium" :
($width > 50) ? "large" :
"extra-large";

print $size;

