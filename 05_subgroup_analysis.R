05_subgroup_analysis.R  

library(survival)

df <- read.csv("data/adam_dataset.csv")

# Example: subgroup by gender
if("gender" %in% colnames(df)) {
  fit_gender <- survfit(Surv(OS_time, OS_event) ~ gender, data = df)
  print(summary(fit_gender))
}
