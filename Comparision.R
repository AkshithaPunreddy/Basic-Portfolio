#DATA
ref_strain <- "ATGCGTACGT"
var_strain <- "ATGCGTTCGT"
#CALCULATE SIMILARITY
#Compare the two strings letter by letter.
compare_strains <- function(s1, s2) {
  s1_split <- strsplit(s1, "")[[1]]
  s2_split <- strsplit(s2, "")[[1]]
  matches <- sum(s1_split == s2_split)
  return((matches / nchar(s1)) * 100)
}
print(paste("Strains are", compare_strains(ref_strain, var_strain), "% identical"))