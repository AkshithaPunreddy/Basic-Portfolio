#Download real data from the NCBI database
my_url <- "https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?db=nuccore&report=fasta&id=NM_000518.5"
download.file(my_url, destfile = "patient_sample.fasta", mode = "wb")
#Read the file
data <- readLines("patient_sample.fasta")
#Clean it: Remove the header and glue the lines together
data_only <- paste(data[-1], collapse = "")
#Math: Count G and C letters vs the total length
total_letters <- nchar(data_only)
only_gc <- gsub("[ATat]", "", data_only)
gc_count <- nchar(only_gc)
#Result
print(paste("The GC score for this sample is:", round((gc_count / total_letters) * 100, 2), "%"))