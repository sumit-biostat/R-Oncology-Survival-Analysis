03_logrank_test.R

library(survival)

df <- read.csv("data/adam_dataset.csv")

# Log-rank test
logrank <- survdiff(Surv(OS_time, OS_event) ~ treatment, data = df)

print(logrank)
