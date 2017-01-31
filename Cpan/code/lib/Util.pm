package code::Test::lib::Util;

use common::sense;
use Exporter qw(import);

our @EXPORT_OK = qw(
    FRESH_16
    FRESH_17
    DATASPRING
);

use constant FRESH_16 => {
    Murphy => 'Murphy',
    Bunta  => 'Bunta',
    Taiki  => 'Taiki',
    Abe    => 'Abe',
};

1;
