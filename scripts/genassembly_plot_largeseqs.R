library("ggplot2", lib.loc="/Library/Frameworks/R.framework/Versions/3.3/Resources/library")

seqsizeslarge <- read.table("dmelall_counted_min100000.sizes")
glarge <-ggplot(data =seqsizeslarge)
glarge +geom_histogram(mapping = aes(x=V2), bins =10) +xlab("Size bp") +ylab("number of sequences") +ggtitle("Frequency distribution of sequences >100kb")