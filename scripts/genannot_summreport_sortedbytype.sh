#Annotation file - outputs total number of features of each type, sorted from the most common to the least common
module load jje/kent/2014.02.19
module load jje/jjeutils/0.1a
infile=./dmel-all-r6.12.gtf
outname=./dmel-annotation

sort -k 3 $infile \
| awk '{print $3}' \
| uniq -c \
| sort -rnk 1 \
| awk '{print $1 "\t" $2}' \
> $outname.sorttype