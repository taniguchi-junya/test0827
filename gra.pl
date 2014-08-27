#!/usr/bin/perl
# read csv file to array in array

use strict;
use warnings;
use Fatal qw/ open /;

my $csv_file = "./test.txt";
my @csv = &readCsvFile($csv_file);

print $csv[0][0]."\n";

sub readCsvFile {
    open(IN, $_[0]);
    while(<IN>) {
        chomp;
        push @csv, [ split(/,/) ];
    }
    close(IN);
    return @csv;
}
