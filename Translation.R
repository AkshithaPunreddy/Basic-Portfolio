#THE INPUT
dna_seq <- "ATGCGTACGTTAGATCGGTAGATG"
#CODON EXTRACTION
starts <- seq(1, nchar(dna_seq), by = 3)
codons <- substring(dna_seq, starts, starts + 2)
codons <- codons[nchar(codons) == 3]
#CODON DICTIONARY
lookup <- c("ATG"="Met", "CGT"="Arg", "ACG"="Thr", "TTA"="Leu", "TAG"="STOP", "GAT"="Asp", "CGG"="Arg")
#TRANSLATION
protein_chain <- c()
for (codon in codons)
{
  amino_acid <- lookup[codon]
  #Handle codons not in our dictionary
  if (is.na(amino_acid))
  {
    amino_acid <- "Unknown"
  }
  #Exit if we hit a stop codon
  if (amino_acid == "STOP")
  {
    print("Stop codon detected. Ending translation.")
    break
  }
  protein_chain <- c(protein_chain, amino_acid)
}
print("FINAL PROTEIN SEQUENCE")
final_result <- paste(protein_chain, collapse = "-")
print(final_result)