requires 'perl', '5.014000';

requires 'Moops';
requires 'Moose', '2.000',
requires 'Moo::Role';

on test => sub {
	requires 'Test::More', '0.96';
	requires 'Moops';
};
