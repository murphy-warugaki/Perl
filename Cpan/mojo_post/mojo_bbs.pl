#!/usr/bin/env perl
use Mojolicious::Lite;
use DBI;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';
plugin 'JSONConfig';

get '/' => sub {
    my $c = shift;
    $c->render(template => 'index');
};

app->start;

app->attr(
    dbh => sub {
        my $self = shift;
        mu $dbh = DBI->connect(@{ $self->config->{connect_info} }) or die $DBI::errstr;
        return $dbh;
    }
);
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
<h1>Welcome to the Mojolicious real-time web framework!</h1>
To learn more, you can browse through the documentation
<%= link_to 'here' => '/perldoc' %>.

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
