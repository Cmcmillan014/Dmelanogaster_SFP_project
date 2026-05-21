for gene in \
FBtr0072692 FBtr0079786 FBtr0071506 FBtr0071990
do
  echo "Running SAPA for $gene"

  /home/labshare/scripts/popGenomics/SAPA/SAPA \
    -c /home/comcmill/MK_analysis/melanogaster_popgen/MK_results_Dmel_Dsim_AG_SFPs_unpol_full_list/CDS.fasta \
    -i "$gene" \
    -o kaks_output/"$gene" \
    --save_alignment
done
#Done with: FBtr0071506 FBtr0071990 FBtr0075615 FBtr0077998 FBtr0078333 FBtr0078335 FBtr0078370 FBtr0078558 FBtr0079557 FBtr0079595 FBtr0079716 FBtr0079959 
#didn't run: FBtr0072692 FBtr0079786 I can calculate the KaKs by hand? or write a script to do this. 

# still need to run: FBtr0081378 FBtr0081591 FBtr0081690 FBtr0083432 FBtr0085314 \
#FBtr0086328 FBtr0086337 FBtr0086596 FBtr0100088 FBtr0110777 \
#FBtr0110781 \
#FBtr0110870 FBtr0110871 FBtr0112491 FBtr0112751 FBtr0112770 \
#FBtr0113049 FBtr0300051 FBtr0300295 FBtr0300303 FBtr0300305 \
#FBtr0300306 FBtr0300307 FBtr0300962 FBtr0301938 FBtr0302804 \
#FBtr0303458 FBtr0303831 FBtr0303840 FBtr0303841 FBtr0304565 \
#FBtr0305483 FBtr0306842 FBtr0309516 FBtr0331203 FBtr0332052 \
#FBtr0332188 FBtr0332995 FBtr0333286