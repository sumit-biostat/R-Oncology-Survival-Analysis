04_cox_model.R

library(survival)
library(survminer)

df <- read.csv("data/adam_dataset.csv")

cox_model <- coxph(Surv(OS_time, OS_event) ~ age + treatment, data = df)

summary(cox_model)

# Forest plot
png("outputs/forest_plot.png")
ggforest(cox_model, data = df)
dev.off()
