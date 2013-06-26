#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Spice;

ddg_spice_test(
    [qw( DDG::Spice::DNS )],
    'mx record dylansserver.com' => test_spice(
        '/js/spice/dns/MX/dylansserver.com',
        call_type => 'include',
        caller => 'DDG::Spice::DNS'
    ),
    'dns records dylansserver.com' => test_spice(
        '/js/spice/dns/ANY/dylansserver.com',
        call_type => 'include',
        caller => 'DDG::Spice::DNS'
    ),
    'a record by foo' => undef,
    'records amazon.com' => undef,
);

done_testing;

