#!/usr/bin/env perl

use Test::Most tests => 1;

use lib 't/lib';

subtest "Testing Net::Dict" => sub {
	use Net::Dict;

	my $server = 'dict.org';
	my $dict = Net::Dict->new($server);

	my $results = $dict->define('word');
	use DDP; p $results;

	my %dbs = $dict->dbs;
	use DDP; p %dbs;

	my %strategies = $dict->strategies;
	use DDP; p %strategies;

	#«pass('Test name');»
};

done_testing;
