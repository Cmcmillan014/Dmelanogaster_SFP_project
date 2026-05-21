# BlastSynteny2

## Performs BlastP search of a query transcript and its neighbors against an annotated genome (fasta and gtf/gff).

### Requirements:
1. Clone the repository and install conda environment `envs/BlastSynteny2.yml`.
2. Required input:
   
   a. Reference genome in FASTA format.
   
   b. Reference annotation in GTF format.
   
   c. Query genome in FASTA format.
   
   d. Query annotation in GFF/GTF format.
   
   e. Reference transcript ID.


### Usage:

```
usage: BlastSynteny2 [-h] -r REF_GENOME -g REF_GTF -i REF_IDS -q QUERY_GENOME -t QUERY_GTF -o OUTDIR [-m {gene,bp}] [-w WINDOW] [--export_gff3_regions]

Step 1: Extract proteins from genome and build BLAST DB

options:
  -h, --help            show this help message and exit
  -r REF_GENOME, --ref_genome REF_GENOME
                        Reference genome FASTA file
  -g REF_GTF, --ref_gtf REF_GTF
                        Reference genome GTF file
  -i REF_IDS, --ref_ids REF_IDS
                        Comma-separated list of reference protein/gene IDs to extract
  -q QUERY_GENOME, --query_genome QUERY_GENOME
                        Query genome FASTA file
  -t QUERY_GTF, --query_gtf QUERY_GTF
                        Query GTF file
  -o OUTDIR, --outdir OUTDIR
                        Directory to save all outputs
  -m {gene,bp}, --flank_method {gene,bp}
                        Flanking extraction method: 'gene' or 'bp' distance
  -w WINDOW, --window WINDOW
                        Window size for flanking region (n genes or base pairs)
  --export_gff3_regions
                        Export reference and query regions as GFF3 with embedded FASTA for Geneious
```

### Example:

In this example we will look for the syntenic region from _D. melangoaster_ in the genome of _D. ananassae_.
