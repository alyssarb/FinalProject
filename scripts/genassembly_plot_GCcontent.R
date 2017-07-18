library("ggplot2", lib.loc="/Library/Frameworks/R.framework/Versions/3.3/Resources/library")

GCcontent <- read.table("GCcontent.fasta")
GCplot <-ggplot(data =GCcontent)
GCplot +geom_freqpoly(mapping =aes(x=V2)) + xlab("% GC") +ylab("number of sequences") + ggtitle("Frequency of GC%") 