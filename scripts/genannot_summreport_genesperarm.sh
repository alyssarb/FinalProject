#Annotation file - total number of genes per chromosome arm (X, Y, 2L, 2R, 3L, 3R, 4)

sort -nk 1 $infile \
| awk '{ if($3 == "gene") print $1}' \
| awk '$1~/^(X|Y|2L|2R|3L|3R|4)$/' \
| uniq -c \
| sort -rnk 1 \
| awk '{print $1 "\t" $2}' \
> $outname.genesperarm
