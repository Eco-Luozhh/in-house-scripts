#!perl -w

use warnings;
use strict;

open (SORTBED,"$ARGV[0]") or die "can't open file $ARGV[0]";
open (CONTIG,"$ARGV[1]") or die "can't open file $ARGV[1]";
open (COVERAGE,">$ARGV[2]") or die "can't create file $ARGV[2]";

my %contig_total_bp = ();
while(my $line=<SORTBED>){
	my @fields = split /\t/,$line;
	$fields[0] =~ s/\s+.*$//ig;
	$contig_total_bp{$fields[0]} += $fields[2]-$fields[1]+1;
}

my %contig_length = ();
my $contig_name = "";
while(my $line=<CONTIG>){
	if($line=~/^>(\S+)\s+/){
		$contig_name = $1;
	}
	else{
		$line =~ s/\s+$//gi;
		$contig_length{$contig_name} += length($line);
	}
}

foreach my $key (sort keys %contig_total_bp){
	if(exists($contig_length{$key})){
		my $coverage = $contig_total_bp{$key}/1;
		print COVERAGE "$key	$coverage\n";
	}
}
close COVERAGE;
close CONTIG;
close SORTBED;
