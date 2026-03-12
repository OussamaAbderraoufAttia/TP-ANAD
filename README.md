# Data Analysis and Mining - TP ANAD

## Project Information

**Institution:** ESI (École Nationale Supérieure d'Informatique - Oued Smar, Algiers)  
**Module:** Analyse de Données et Fouilles de Données (Data Analysis and Data Mining)  
**Academic Year:** 2025-2026

### Team Members
- **ATTIA OUSSAMA ABADERRAOUF**
- **SRAICH IMENE**

### Supervisor
- **BOUDI ABDERRAHMAN**

---

## Project Overview

This project is a practical assignment (TP) focused on multivariate statistical analysis of a real-world dataset. The analysis combines two complementary dimensionality reduction techniques: **Principal Component Analysis (PCA)** for quantitative variables and **Multiple Correspondence Analysis (MCA)** for qualitative variables.

### Objectives
1. Load and explore a dataset with multiple variables of different types
2. Apply PCA to analyze quantitative variables and their relationships
3. Apply MCA to analyze qualitative variables and their associations
4. Interpret the results and extract meaningful insights
5. Provide comprehensive visualizations and statistical summaries

---

## Dataset Description

### Dataset Name: Labor Market Data
The dataset contains **533 observations** (individuals) with **11 variables** describing labor market characteristics.

#### Variable Details:

| Variable | Type | Description | Values/Range |
|----------|------|-------------|--------------|
| **wage** | Quantitative | Hourly wage rate | $3.35 - $25.20/hour |
| **education** | Quantitative | Years of education | 6 - 17 years |
| **experience** | Quantitative | Years of work experience | 0 - 47 years |
| **age** | Quantitative | Age of the individual | 18 - 64 years |
| **ethnicity** | Qualitative | Ethnic background | Caucasian, Hispanic, Other |
| **region** | Qualitative | Geographical region | South, Other |
| **gender** | Qualitative | Binary gender | Male, Female |
| **occupation** | Qualitative | Type of occupation | Worker, Manager, Sales, etc. |
| **sector** | Qualitative | Economic sector | Manufacturing, Construction, Services, etc. |
| **union** | Qualitative | Union membership status | Yes, No |
| **married** | Qualitative | Marital status | Yes, No |

### Data Characteristics
- **Total Observations:** 533 individuals
- **Quantitative Variables:** 4 (wage, education, experience, age)
- **Qualitative Variables:** 7 (ethnicity, region, gender, occupation, sector, union, married)
- **Total Variables:** 11
- **Missing Values:** None detected
- **Data Quality:** Complete dataset with no missing values

---

## Analysis Methodology

### 1. Principal Component Analysis (PCA)
**Purpose:** Reduce dimensionality while preserving variance in quantitative variables

**Variables Analyzed:**
- wage (hourly wage rate)
- education (years of education)
- experience (years of work experience)
- age (age in years)

**Key Findings:**
- The PCA reveals relationships between wage, education, experience, and age
- The scree plot shows inertia distribution across principal components
- Correlation circle illustrates variable relationships
- Individual projections show wage disparities across education and experience levels

### 2. Multiple Correspondence Analysis (MCA)
**Purpose:** Analyze associations between qualitative variables and their modalities

**Variables Analyzed:**
- ethnicity (3 modalities)
- region (2 modalities)
- gender (2 modalities)
- occupation (3+ modalities)
- sector (4 modalities)
- union (2 modalities)
- married (2 modalities)

**Key Findings:**
- Strong associations between occupation type and sector
- Gender patterns across different occupational groups
- Regional differences in employment characteristics
- Union membership correlations with occupation and sector

---

## Files and Folder Structure

```
TP ANAD/
├── README.md                              # This file
├── report.tex                             # Full LaTeX report
├── script.r                               # R analysis script (MCA)
├── data_anad.csv                          # Raw dataset (533 x 11)
│
├── ACP/                                   # PCA Results Folder
│   ├── 1_Eboulis_Valeurs_Propres.png     # Scree plot (eigenvalues)
│   ├── 2_Cercle_Correlations.png         # Correlation circle
│   ├── 3_Contribution_Axe1.png           # Variable contributions to Axis 1
│   ├── 4_Contribution_Axe2.png           # Variable contributions to Axis 2
│   ├── 5_Individus_Cos2.png              # Individual quality of representation
│   ├── 6_Individus_Occupation.png        # Individuals colored by occupation
│   └── 7_Individus_Genre.png             # Individuals colored by gender
│
├── 8_ACM_Inertie.png                      # MCA scree plot
├── 9_ACM_Modalites.png                    # MCA categories biplot
├── 10_ACM_Individus_Occupation.png        # MCA individuals by occupation
└── .gitignore                             # Git ignore file
```

---

## Key Results Summary

### PCA Results
- **Dimension 1 (PC1):** Explains the relationship between wage, education, and experience
- **Dimension 2 (PC2):** Captures age-related patterns
- **Cumulative Variance:** First two axes explain ~70% of total variance
- **Interpretation:** Wage is strongly correlated with education and experience levels

### MCA Results
- **Strong Associations Found:**
  - Occupation type and sector membership
  - Gender distribution across occupational categories
  - Union membership patterns by sector
  
- **Dimension Interpretation:**
  - Axis 1: Occupational characteristics and sector differentiation
  - Axis 2: Personal characteristics (gender, marital status)

---

## Statistical Summary

### Descriptive Statistics (Quantitative Variables)

| Variable | Mean | Median | Std Dev | Min | Max |
|----------|------|--------|---------|-----|-----|
| Wage ($/hour) | 9.02 | 7.78 | 5.48 | 3.35 | 25.20 |
| Education (years) | 11.56 | 12 | 2.54 | 6 | 17 |
| Experience (years) | 17.82 | 17 | 12.71 | 0 | 47 |
| Age (years) | 36.83 | 36 | 11.41 | 18 | 64 |

### Correlation Matrix (Quantitative Variables)

```
              wage education experience    age
wage          1.00      0.45      0.38   0.32
education     0.45      1.00      -0.30  -0.09
experience    0.38      -0.30     1.00   0.75
age           0.32      -0.09     0.75   1.00
```

**Interpretation:**
- Wage has moderate positive correlation with education (0.45)
- Wage has moderate positive correlation with experience (0.38)
- Experience and age are highly correlated (0.75)
- Education is negatively correlated with experience (-0.30)

---

## Conclusions and Insights

1. **Wage Determinants:** Education and work experience are significant factors in determining hourly wages

2. **Occupational Patterns:** Clear clustering of individuals by occupation type and sector membership

3. **Demographic Factors:** Gender and marital status show distinct patterns across different occupational groups

4. **Regional Differences:** Geographic location influences employment sector distribution

5. **Union Impact:** Union membership correlates with specific sectors (manufacturing, construction)

---

## Technologies Used

- **Programming Language:** R (version 4.x)
- **Statistical Methods:** PCA and MCA
- **Visualization Libraries:** ggplot2, factoextra
- **Report Generation:** LaTeX (XeLaTeX)

---

## How to Reproduce the Analysis

### Requirements
```r
install.packages("FactoMineR")  # PCA and MCA functions
install.packages("factoextra")   # Visualization functions
install.packages("ggplot2")      # Advanced graphics
```

### Running the Analysis
```bash
# In R console or RStudio
source("script.r")  # Runs MCA analysis
# PCA analysis script available upon request
```

---

## Document Structure

- **README.md** - Overview and project description (this file)
- **report.tex** - Complete academic report (10 pages max)
  - Executive summary
  - Introduction
  - Literature review
  - Methodology
  - Results and interpretation
  - Conclusions
  - References

---

## References

1. Everitt, B. S., & Hothorn, T. (2011). *An Introduction to Applied Multivariate Analysis with R*. Springer.

2. Husson, F., Lê, S., & Pagès, J. (2017). *Exploratory Multivariate Analysis by Example Using R*. CRC Press.

3. Lebart, L., Piron, M., & Stehlé, B. (2000). *Traitement des données statistiques*. Dunod.

4. Tenenhaus, M., & Young, F. W. (1985). An analysis and synthesis of multiple correspondence analysis, optimal scaling, homogeneity analysis and other methods for quantifying categorical multivariate data. *Psychometrika*, 50(1), 91-119.

---

## Contact Information

For questions or additional information about this project, please contact the team members through the ESI institution.

---

**Last Updated:** March 2026  
**Project Status:** Completed  
**License:** Academic Use Only (ESI Institution)
