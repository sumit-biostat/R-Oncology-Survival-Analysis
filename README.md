# R-Oncology-Survival-Analysis
Focus / Purpose:  Kaplan-Meier survival curves  Log-rank tests  Cox proportional hazards modeling  Hazard ratios and confidence intervals  Practical for oncology trials (time-to-event endpoints)


#  Clinical Oncology Survival Analysis using R

##  Project Overview
This project performs advanced survival analysis on oncology clinical data, mimicking real-world clinical trial workflows. The analysis focuses on key time-to-event endpoints such as Overall Survival (OS) and Progression-Free Survival (PFS).

##  Objectives
- Estimate survival probabilities using Kaplan-Meier curves  
- Compare treatment groups using Log-rank test  
- Build multivariate Cox proportional hazards models  
- Calculate hazard ratios (HR) with confidence intervals  
- Perform subgroup analysis  
- Generate publication-style survival plots  

##  Dataset
- Source: Kaggle (Breast/Lung Cancer Survival Dataset)  
- Data includes patient demographics, tumor stage, survival time, and status  
- Additional clinical variables (OS, PFS, treatment groups) were derived  

## Tools & Packages
- R
- survival
- survminer
- ggplot2
- dplyr

##  Project Structure

R-Clinical-Oncology-Survival/
│
├── data/
│ ├── raw_data.csv
│ └── adam_dataset.csv
│
├── scripts/
│ ├── 01_data_preparation.R
│ ├── 02_kaplan_meier.R
│ ├── 03_logrank_test.R
│ ├── 04_cox_model.R
│ ├── 05_subgroup_analysis.R
│
├── outputs/
│ ├── KM_OS_plot.png
│ ├── KM_PFS_plot.png
│ ├── forest_plot.png
│ └── results_summary.csv
│
├── report/
│ └── clinical_report.md
│
└── README.md



## 🔬 Analysis Performed

### 1. Kaplan-Meier Survival Analysis
- Estimated survival probability over time for OS and PFS  
- Visualized using survival curves  

### 2. Log-Rank Test
- Compared survival distributions between treatment groups  

### 3. Cox Proportional Hazards Model
- Identified risk factors affecting survival  
- Estimated hazard ratios (HR) and 95% confidence intervals  

### 4. Subgroup Analysis
- Evaluated survival differences across patient subgroups  

##  Key Outputs
- Kaplan-Meier survival plots  
- Hazard ratios and confidence intervals  
- Forest plots for model interpretation  

##  Clinical Interpretation
- Hazard Ratio (HR) < 1 → Reduced risk  
- HR > 1 → Increased risk  
- Censored data handled appropriately  

##  Use Case
This project demonstrates real-world clinical trial survival analysis workflow and is relevant for:
- Clinical SAS Programmer roles  
- Biostatistics positions  
- Data Analyst roles in healthcare  

##  Future Improvements
- Add real clinical trial datasets (CDISC SDTM/ADaM format)  
- Include machine learning survival models  
- Deploy dashboard using Shiny  

##  Author
Sumit Choudhary
