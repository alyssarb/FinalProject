#Annotation file - lengths of genes
module load jje/kent/2014.02.19
module load jje/jjeutils/0.1a
infile=./dmel-all-r6.12.gtf
outname=./dmel-annotation

sort -k 3 $infile \
| awk '{if($3 == "gene") print $5 - $4}' \
| sort -rnk 1 \
| awk '{print $1}' \
> $outname.genelength
