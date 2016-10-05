use common::sense;
use Data::Dumper;
use Text::Xslate;

my $tx = Text::Xslate->new();

my %var = (
    title => 'Book',
    books => [ { title => 'sekainomurphy' }, { title => 'japan_murphy' } ],
    price => 600
);

my $template = q{
<h1><: $title :></h1>
<ul>
:for $books->$book {
 <li><: $book.title :>
:} # for
</ul>
};

warn Dumper $tx->render_string($template, \%var);

