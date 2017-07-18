#Annotation file - number of transcripts per gene

sort -k 3 $infile \
| awk '{if($3 == "mRNA") print substr($10,2,11)}' \
| uniq -c \
| sort -rnk 1 \
| awk '{print $1 "\t" $2}' \
> $outname.transcriptpergene
