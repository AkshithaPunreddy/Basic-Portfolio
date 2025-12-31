#LOAD THE TOOL
library(ggplot2)
#DATA: Simple table: Patient names and their test results
vis_data <- data.frame(
  Patient = c("P1", "P2", "P3"),
  Result = c(10, 40, 80)
)
#PLOT
ggplot(vis_data, aes(x = Patient, y = Result)) + geom_col()