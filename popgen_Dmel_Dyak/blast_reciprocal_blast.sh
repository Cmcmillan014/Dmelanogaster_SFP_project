# Run blast on D. melanogaster against target species
#(Blast) rc-yahmed-node3 popgen_Dmel_Dyak $ blastp -query dmel.fa -db dyak_db -out mel_vs_yak.out -outfmt 6 -max_target_seqs 5 #template shell command for blastp, will be repeated for each target species with appropriate changes to query, database, and output file names
#(Blast) rc-yahmed-node3 popgen_Dmel_Dyak $ blastp -query data/NCBI/Dmel_data/GCF_000001215.4/protein_SFP.fa -db data/NCBI/Dana_data/GCF_017639315.1/dana_db -out data/NCBI/Blast_output/Dana/mel_vs_ana_forward_blast.out -outfmt 6 -max_target_seqs 5
#(Blast) rc-yahmed-node3 popgen_Dmel_Dyak $ blastp -query data/NCBI/Dmel_data/GCF_000001215.4/protein_SFP.fa -db data/NCBI/Dere_data/GCF_003286155.1/dere_db -out data/NCBI/Blast_output/Dere/mel_vs_ere_forward_blast.out -outfmt 6 -max_target_seqs 5
#(Blast) rc-yahmed-node3 popgen_Dmel_Dyak $ blastp -query data/NCBI/Dmel_data/GCF_000001215.4/protein_SFP.fa -db data/NCBI/Dper_data/GCF_003286085.1/dper_db -out data/NCBI/Blast_output/Dper/mel_vs_per_forward_blast.out -outfmt 6 -max_target_seqs 5
#(Blast) rc-yahmed-node3 popgen_Dmel_Dyak $ blastp -query data/NCBI/Dmel_data/GCF_000001215.4/protein_SFP.fa -db data/NCBI/Dpseudo_data/GCF_009870125.1/dpseudo_db -out data/NCBI/Blast_output/Dpseudo/mel_vs_pseudo_forward_blast.out -outfmt 6 -max_target_seqs 5
#(Blast) rc-yahmed-node3 popgen_Dmel_Dyak $ blastp -query data/NCBI/Dmel_data/GCF_000001215.4/protein_SFP.fa -db data/NCBI/Dsec_data/GCF_004382195.2/dsec_db -out data/NCBI/Blast_output/Dsec/mel_vs_sec_forward_blast.out -outfmt 6 -max_target_seqs 5
#(Blast) rc-yahmed-node3 popgen_Dmel_Dyak $ blastp -query data/NCBI/Dmel_data/GCF_000001215.4/protein_SFP.fa -db data/NCBI/Dsim_data/GCF_016746395.2/dsim_db -out data/NCBI/Blast_output/Dsim/mel_vs_sim_forward_blast.out -outfmt 6 -max_target_seqs 5
#(Blast) rc-yahmed-node3 popgen_Dmel_Dyak $ blastp -query data/NCBI/Dmel_data/GCF_000001215.4/protein_SFP.fa -db data/NCBI/Dyak_data/GCF_016746365.2/dyak_db -out data/NCBI/Blast_output/Dyak/mel_vs_yak_forward_blast.out -outfmt 6 -max_target_seqs 5# Cut second column from output list 

# faSomeRecords to generate FASTA files for query yakuba SFPs
for file in D*; do
    # 1. Check if it's actually a directory to avoid errors
    if [ -d "$file" ]; then
        # 2. Extract column 2 into that specific directory
        cut -f2 "$file/*" > "$file/query_gene_list.txt"
        
        # 3. Use wildcards ONLY for the source protein.faa (where the file already exists)
        faSomeRecords ../"${file}_data"/GCF_*/protein.faa "$file/query_gene_list.txt" "${file}.fasta"
    fi
done
#Reciprocal blast: blast D. melanogaster SFPs against D. yakuba database, and blast D. yakuba SFPs against D. melanogaster database, then compare results to identify reciprocal best hits (RBHs).



