01_data_preparation.R

library(dplyr)

# Load dataset
df <- read.csv("data/raw_data.csv")

# Convert status to numeric (1 = event, 0 = censored)
df$status <- ifelse(df$status == "Dead", 1, 0)

# Create Overall Survival (OS)
df$OS_time <- df$time
df$OS_event <- df$status

# Simulate treatment group (if not present)
set.seed(123)
df$treatment <- sample(c("Drug_A", "Drug_B"), nrow(df), replace = TRUE)

# Simulate PFS (for demonstration)
df$PFS_time <- df$OS_time - sample(1:10, nrow(df), replace = TRUE)
df$PFS_event <- df$OS_event

# Save ADaM-like dataset
write.csv(df, "data/adam_dataset.csv", row.names = FALSE)
