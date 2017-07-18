#Annotation file - number of transcripts per gene
module load jje/kent/2014.02.19
module load jje/jjeutils/0.1a
infile=./dmel-all-r6.12.gtf
outname=./dmel-annotation

sort -k 3 $infile \
| awk '{if($3 == "mRNA") print substr($10,2,11)}' \
| uniq -c \
| sort -rnk 1 \
| awk '{print $1 "\t" $2}' \
> $outname.transcriptpergene
