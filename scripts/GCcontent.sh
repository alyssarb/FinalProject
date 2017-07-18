module load jje/kent/2014.02.19
module load jje/jjeutils/0.1a
infile="dmel-all-chromosome-r6.12.fasta"
outname="GCcontent"

bioawk -c fastx '{ print ">"$name, "\t", gc($seq) }' dmel-all-chromosome-r6.12.fasta > $outname.fasta
