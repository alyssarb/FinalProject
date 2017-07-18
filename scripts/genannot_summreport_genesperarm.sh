#Annotation file - total number of genes per chromosome arm (X, Y, 2L, 2R, 3L, 3R, 4)
module load jje/kent/2014.02.19
module load jje/jjeutils/0.1a
infile=./dmel-all-r6.12.gtf
outname=./dmel-annotation

sort -nk 1 $infile \
| awk '{ if($3 == "gene") print $1}' \
| awk '$1~/^(X|Y|2L|2R|3L|3R|4)$/' \
| uniq -c \
| sort -rnk 1 \
| awk '{print $1 "\t" $2}' \
> $outname.genesperarm
