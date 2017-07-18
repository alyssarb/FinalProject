#Annotation file - lengths of genes

sort -k 3 $infile \
| awk '{if($3 == "gene") print $5 - $4}' \
| sort -rnk 1 \
| awk '{print $1}' \
> $outname.genelength
