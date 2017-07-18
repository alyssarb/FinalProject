library("ggplot2", lib.loc="/Library/Frameworks/R.framework/Versions/3.3/Resources/library")

ExonLength <- read.table("dmel-annotation.exonlength")
exlength <-ggplot(data =ExonLength)
exlength +geom_histogram(mapping = aes(x=log(V1)), bins =50) +xlab("log of exon length (bp)") +ylab("frequency") +ggtitle("Exon length distribution")