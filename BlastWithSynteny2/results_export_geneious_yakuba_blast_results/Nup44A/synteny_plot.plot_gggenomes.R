
    library(tibble)
    library(gggenomes)

    # Load input files
    seqs <- readr::read_tsv("results_export_geneious_yakuba_blast_results/Nup44A/gggenomes_seqs.tsv")
    genes <- readr::read_tsv("results_export_geneious_yakuba_blast_results/Nup44A/gggenomes_genes.tsv")
    links <- readr::read_tsv("results_export_geneious_yakuba_blast_results/Nup44A/gggenomes_links.tsv")

    # Generate plot
    p <- gggenomes(genes=genes, seqs=seqs, links=links) +
        geom_link() +
        geom_seq() +
        geom_seq_label() +
        geom_gene_tag(aes(label=gene_name), nudge_y=0.1, check_overlap = TRUE) +
        geom_gene(aes(fill=gene_name), alpha = 0.3) 

    # Save plot
    ggplot2::ggsave("results_export_geneious_yakuba_blast_results/Nup44A/synteny_plot.pdf", plot=p, width=10, height=4)
    