# in-house-scripts
 
perl 1_reads_with_duplication_filter.pl -fq1 input_R1.fq -fq2 input2_R2.fq -out output_rm_dup
perl 2_reads_with_excess_of_N_filter.pl output_rm_dup_1.fq output_rm_dup_2.fq output_rm_dup_N_1.fq output_rm_dup_N_2.fq 5
perl 3_reads_with_trimm_low_quality.pl output_rm_dup_N_1.fq.fq output_rm_dup_N_trim_1.fq output_rm_dup_N_trim_2.fq 20