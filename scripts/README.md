# Scripts

- **genannot_script_exonlength.sh** is a bash script takes the gtf annotation filed and returns just the exon lengths
- **genannot_plot_exonlength.R** is an R script that takes the output from the **genannot_script_exonlength.sh** script and plots it
- **genannot_script_genelength.sh** is a bash script takes the gtf annotation filed and returns just the gene lengths
- **genannot_plot_genelength.R** is an R script that takes the output from the **genannot_script_genelength.sh** script and plots it
- **genannot_script_transcriptspergene.sh** is a bash script that outputs the number of mRNA transcripts for each gene
- **genannot_plot_transcriptspergene.R** is an R script that takes the output from **genannot_script_transcriptspergene.sh** and plots a distribution of the number of transcripts per gene
- **genannot_summreport_genesperarm.sh** is a bash script that takes the gtf annotation filed and returns the total number of genes per chromosome arm (X, Y, 2L, 2R, 3L, 3R, 4)
- **genannot_summreport_sortedbytype.sh** is a bash script that takes the gtf annotation filed and returns the total number of features of each type, sorted from the most common to the least common
- **genassembly_summreport_andsort.sh** is a bash script that returns the total number of nucleotides, Ns, and sequences... and sorts them based on size
- **genassembly_summreport_largeseqs.sh** is a bash script that returns the total number of nucleotides, Ns, and sequences for sequences over 100kb
- **genassembly_summreport_smallseqs.sh** is a bash script that returns the total number of nucleotides, Ns, and sequences for sequences under 100kb
- **genassembly_plot_ALLseqs.R** is an R script that plots a sequence length distribution
- **genassembly_plot_largeseqs.R** is an R script that plots  sequence length distribution for sequences larger than 100kb
- **genassembly_plot_smallseqs.R** is an R script that plots  sequence length distribution for sequences smaller than 100kb
- **GCcontent.sh** is a bash script that returns the gene name and GC%
- **genassembly_plot_GCcontent.R** is an R script that plots GC% distribution