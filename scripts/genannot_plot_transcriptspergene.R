library("ggplot2", lib.loc="/Library/Frameworks/R.framework/Versions/3.3/Resources/library")

TranscriptsPerGene <- read.table("dmel-annotation.transcriptpergene")
transcripts <-ggplot(data =TranscriptsPerGene)
transcripts +geom_histogram(mapping = aes(x=log(V1)), bins =75) +xlab("log(number of transcripts/gene)") +ylab("frequency") +ggtitle("mRNA/Gene")