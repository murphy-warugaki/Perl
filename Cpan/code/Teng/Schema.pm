package Teng::Schema;

use common::sense;

table {
name 'user';
pk 'id';
columns qw/id user_id body/;
};

table {
name 'status';
pk 'id';
columns qw/id user_id body/;
};

1;

