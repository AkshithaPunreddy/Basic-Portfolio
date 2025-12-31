#Gene activity in different immune cells
immune_cells <- data.frame(Gene = c("CD3D", "CD19", "GNLY"), T_Cell = c(100, 2, 5), B_Cell = c(1, 120, 0))
#Find the marker
marker <- immune_cells$Gene[which.max(immune_cells$T_Cell)]
marker2 <- immune_cells$Gene[which.max(immune_cells$B_Cell)]
print(paste("The signature marker for identifying a T-Cell is:", marker))
print(paste("The signature marker for identifying a B-Cell is:", marker2))