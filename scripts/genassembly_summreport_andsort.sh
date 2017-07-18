module load jje/kent/2014.02.19
infile=./dmel-all-chromosome-r6.12.fasta
faSize ddmel-all-chromosome-r6.12.fasta

infile=./dmel-all-chromosome-r6.12.fasta
outname=./dmelall
faFilter $infile /dev/stdout \
| tee $outname.fa \
| faSize -detailed /dev/stdin \
| sort -rnk 2,2 \
> $outname.sizes

#The output file has the sizes of each fragment sorted from largest to smallest