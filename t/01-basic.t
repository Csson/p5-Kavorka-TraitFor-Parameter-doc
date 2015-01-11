use strict;
use warnings FATAL => 'all';
use Test::More;
use if $ENV{'AUTHOR_TESTING'}, 'Test::Warnings';

use lib('t/corpus/lib');
use MyKavorkaParamTraitTest;
#use Kavorka::TraitFor::Parameter::doc;

ok 1;

my $method = MyKavorkaParamTraitTest->meta->get_method('square');

is $method->signature->params->[1]->traits->{'doc'}[0], 'The integer to square.', 'Yes';

done_testing;
