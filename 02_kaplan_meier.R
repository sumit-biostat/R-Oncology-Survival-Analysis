02_kaplan_meier.R

library(survival)
library(survminer)

df <- read.csv("data/adam_dataset.csv")

# OS Curve
fit_os <- survfit(Surv(OS_time, OS_event) ~ treatment, data = df)

png("outputs/KM_OS_plot.png")
ggsurvplot(fit_os, data = df, pval = TRUE)
dev.off()

# PFS Curve
fit_pfs <- survfit(Surv(PFS_time, PFS_event) ~ treatment, data = df)

png("outputs/KM_PFS_plot.png")
ggsurvplot(fit_pfs, data = df, pval = TRUE)
dev.off()
