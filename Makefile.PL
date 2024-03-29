use strict;use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'WWW::MovieReviews::NYT',
    AUTHOR        => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM  => 'lib/WWW/MovieReviews/NYT.pm',
    ABSTRACT_FROM => 'lib/WWW/MovieReviews/NYT.pm',
    dist          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean         => { FILES => 'WWW-MovieReviews-NYT-*' },
    PREREQ_PM     => {
        'Test::More'            => 0,
        'Readonly'              => '1.03',
        'HTTP::Request::Common' => '5.824',
        'LWP::UserAgent'        => '2.33',
    },
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
);