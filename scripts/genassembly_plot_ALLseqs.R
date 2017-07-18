library("ggplot2", lib.loc="/Library/Frameworks/R.framework/Versions/3.3/Resources/library")

seqsizesALL <- read.table("dmelall.sizes")
gALL <-ggplot(data =seqsizesALL)
gALL +geom_freqpoly(mapping =aes(x=log(V2)), bins=100) +xlab("Size log(bp)") +ylab("number of sequences") +ggtitle("Frequency distribution of all sizes of sequences")