library("ggplot2", lib.loc="/Library/Frameworks/R.framework/Versions/3.3/Resources/library")

GeneLength <- read.table("dmel-annotation.genelength")
genlength <-ggplot(data =GeneLength)
genlength +geom_histogram(mapping = aes(x=log(V1)), bins =50) +xlab("log of gene length (bp)") +ylab("frequency") +ggtitle("Gene length distribution")