#DEFINE PARAMETERS
num_genes <- 5
num_patients <- 6
#SET UP THE DATA
genes <- c("TP53", "CFTR", "BRCA1", "HBB", "EGFR")
data_values <- c(
  8, 7, 9,     80, 85, 82,   # Row 1: TP53
  5, 4, 6,     30, 35, 32,   # Row 2: CFTR
  10, 12, 11,  45, 48, 44,   # Row 3: BRCA1
  100, 95, 98, 99, 102, 97,  # Row 4: HBB
  20, 22, 21,  20, 19, 21    # Row 5: EGFR
)
#BUILD THE MATRIX
counts <- matrix(data_values, nrow = num_genes, ncol = num_patients, byrow = TRUE)
#Adding names to the rows and columns
rownames(counts) <- genes
colnames(counts) <- c("H1", "H2", "H3", "T1", "T2", "T3")
#CALCULATE AVERAGES
#Columns 1:3 are Healthy; 4:6 are Treated
healthy_avg <- rowMeans(counts[, 1:3])
treated_avg <- rowMeans(counts[, 4:6])
#CALCULATE FOLD CHANGE
fold_change <- treated_avg / healthy_avg
#GENERATE THE REPORT
report <- data.frame(Gene = genes, Fold_Change = round(fold_change, 2))
#SORT AND PRINT
#Ordering from highest to lowest expression change
final_report <- report[order(-report$Fold_Change), ]
print(final_report)