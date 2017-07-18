#Annotation file - outputs total number of features of each type, sorted from the most common to the least common

infile=./dmel-all-r6.12.gtf
outname=./dmel-annotation
sort -k 3 $infile \
| awk '{print $3}' \
| uniq -c \
| sort -rnk 1 \
| awk '{print $1 "\t" $2}' \
> $outname.sorttype
