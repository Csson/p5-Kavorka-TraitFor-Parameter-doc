use strict;
use warnings FATAL => 'all';
use Test::More;
use if $ENV{'AUTHOR_TESTING'}, 'Test::Warnings';

use lib('corpus/lib');
use MyKavorkaParamTraitTest;
#use Kavorka::TraitFor::Parameter::doc;

ok 1;

my $method = MyKavorkaParamTraitTest->meta->get_method('tester');

is $method->signature->traits->{'doc'}[0], 'just an integer', 'Yes';

done_testing;
