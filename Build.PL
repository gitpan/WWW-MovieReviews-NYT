use strict;use warnings;
use Module::Build;

my $builder = Module::Build->new(
    sign              => 1,
    module_name       => 'WWW::MovieReviews::NYT',
    license           => 'perl',
    dist_author       => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    dist_version_from => 'lib/WWW/MovieReviews/NYT.pm',
    add_to_cleanup    => [ 'WWW-MovieReviews-NYT-*' ],
    build_requires    => {
        'Test::More'            => 0,
        'Readonly'              => '1.03',
        'HTTP::Request::Common' => '5.824',
        'LWP::UserAgent'        => '2.33',
    },
);

$builder->create_build_script();