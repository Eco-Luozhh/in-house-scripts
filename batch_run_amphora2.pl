#!perl -w

use warnings;
use strict;

opendir (DIR,"$ARGV[0]") or die "can't open file $ARGV[0]";

my %all_marker_genes = ();
foreach my $file (readdir DIR){
	if($file =~ /^(.*)\.fa/ || $file =~ /^(.*)\.fasta/){
		chdir "$ARGV[0]";
		mkdir ("temp");
		system ("cp $file temp");
		chdir ("temp");
		system ("perl /softwares/AMPHORA2-master/Scripts/MarkerScanner.pl $file ");
		
		if(-e "rpL2.pep"){
			open (IN,"rpL2.pep") or die "can't open file rpL2.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpL2.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpL2.pep ../"."$file".".rpL2.pep");
			}
		}
		
		if(-e "rpL3.pep"){
			open (IN,"rpL3.pep") or die "can't open file rpL3.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpL3.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpL3.pep ../"."$file".".rpL3.pep");
			}
		}
		
		if(-e "rpL4.pep"){
			open (IN,"rpL4.pep") or die "can't open file rpL4.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpL4.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpL4.pep ../"."$file".".rpL4.pep");
			}
		}
		
		if(-e "rpL5.pep"){
			open (IN,"rpL5.pep") or die "can't open file rpL5.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpL5.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpL5.pep ../"."$file".".rpL5.pep");
			}
		}
		
		if(-e "rpL6.pep"){
			open (IN,"rpL6.pep") or die "can't open file rpL6.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpL6.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpL6.pep ../"."$file".".rpL6.pep");
			}
		}
		
		if(-e "rpL14.pep"){
			open (IN,"rpL14.pep") or die "can't open file rpL14.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpL14.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpL14.pep ../"."$file".".rpL14.pep");
			}
		}
		if(-e "rpL15.pep"){
                        open (IN,"rpL15.pep") or die "can't open file rpL15.pep";
                        my $count = 0;
                        my $seq = "";
                        while(my $line = <IN>){
                                if($line=~/^>(\S+)\s+/){
                                        $count++;
                                }
                                else{
                                        $seq .= $line;
                                }
                        }
                        close IN;
                        if($count == 1){
                                $all_marker_genes{"rpL15.pep"}->{$file} = $seq;
                        }
                        else{
                                system ("cp rpL15.pep ../"."$file".".rpL15.pep");
                        }
                }

		if(-e "rpL16.pep"){
			open (IN,"rpL16.pep") or die "can't open file rpL16.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpL16.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpL16.pep ../"."$file".".rpL16.pep");
			}
		}
		
		if(-e "rpL18.pep"){
			open (IN,"rpL18.pep") or die "can't open file rpL18.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpL18.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpL18.pep ../"."$file".".rpL18.pep");
			}
		}
		
		if(-e "rpL22.pep"){
			open (IN,"rpL22.pep") or die "can't open file rpL22.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpL22.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpL22.pep ../"."$file".".rpL22.pep");
			}
		}
		
		if(-e "rpL24.pep"){
			open (IN,"rpL24.pep") or die "can't open file rpL24.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpL24.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpL24.pep ../"."$file".".rpL24.pep");
			}
		}
		
		if(-e "rpS3.pep"){
			open (IN,"rpS3.pep") or die "can't open file rpS3.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpS3.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpS3.pep ../"."$file".".rpS3.pep");
			}
		}
		
		if(-e "rpS8.pep"){
			open (IN,"rpS8.pep") or die "can't open file rpS8.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpS8.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpS8.pep ../"."$file".".rpS8.pep");
			}
		}
		
		if(-e "rpS10.pep"){
			open (IN,"rpS10.pep") or die "can't open file rpS10.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpS10.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpS10.pep ../"."$file".".rpS10.pep");
			}
		}
		
		if(-e "rpS17.pep"){
			open (IN,"rpS17.pep") or die "can't open file rpS17.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpS17.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpS17.pep ../"."$file".".rpS17.pep");
			}
		}
		
		if(-e "rpS19.pep"){
			open (IN,"rpS19.pep") or die "can't open file rpS19.pep";
			my $count = 0;
			my $seq = "";
			while(my $line = <IN>){
				if($line=~/^>(\S+)\s+/){
					$count++;
				}
				else{
					$seq .= $line;
				}
			}
			close IN;
			if($count == 1){
				$all_marker_genes{"rpS19.pep"}->{$file} = $seq;
			}
			else{
				system ("cp rpS19.pep ../"."$file".".rpS19.pep");
			}
		}
		
		chdir ("..");
		system ("rm -r temp");
		chdir ("..");
	}
}
closedir DIR;

foreach my $key (sort keys %all_marker_genes){
	open (OUT,">$key") or die "can't create file $key";
	foreach my $subkey (sort keys %{$all_marker_genes{$key}}){
		print OUT ">$subkey\n";
		print OUT "$all_marker_genes{$key}->{$subkey}";
	}
	close OUT;
}
