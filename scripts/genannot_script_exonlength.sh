#Annotation file - lengths of exons

sort -k 3 $infile \
| awk '{if($3 == "exon") print $5 - $4}' \
| sort -rnk 1 \
| awk '{print $1}' \
> $outname.exonlength
