library("ggplot2", lib.loc="/Library/Frameworks/R.framework/Versions/3.3/Resources/library")

seqsizessmall <- read.table("dmelall_counted_max100000.sizes")
gsmall <-ggplot(data =seqsizessmall)
gsmall +geom_freqpoly(mapping =aes(x=log(V2)), bins=100) + xlab("Size log(bp)") +ylab("number of sequences") + ggtitle("Frequency distribution of sequences <100kb")
