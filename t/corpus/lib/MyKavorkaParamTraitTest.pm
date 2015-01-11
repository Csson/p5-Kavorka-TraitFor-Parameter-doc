use strict;
use warnings;

use Moops;

class MyKavorkaParamTraitTest types Types::Standard using Moose {

    use MooseX::KavorkaInfo;

    method tester(Int $integer does doc('Just an integer')) {
        return $integer;
    }

}

