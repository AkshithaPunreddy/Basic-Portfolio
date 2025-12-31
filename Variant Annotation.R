#INPUT: Patient Mutation ID
patient_snp <- "rs113993960"
#DATABASE
clinvar_db <- data.frame(ID = c("rs113993960", "rs121908745"), Status = c("Pathogenic", "Likely Pathogenic"), Disease = c("Cystic Fibrosis", "Infertility")
)
#Check if the mutation exists in our records
if (patient_snp %in% clinvar_db$ID)
{
  # If found, extract the specific row
  result <- clinvar_db[clinvar_db$ID == patient_snp, ]
  # Print the diagnostic report
  print(paste("Mutation", patient_snp, "is", result$Status, "for", result$Disease))
} else
{
  # If NOT found, provide a notification
  print(paste("Mutation", patient_snp, "not found in current database. Further review required."))
}