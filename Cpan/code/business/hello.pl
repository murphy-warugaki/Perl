use common::sense;
use Mojolicious::Lite;
use Plack::Builder;

get '/' => sub { 
 my $self = shift;
 $self->render('index');
};

