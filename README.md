# Arizona vs. Maine: Public School Funding Analysis

## Project Overview
This project analyzes funding disparities and student performance in public schools across Arizona and Maine, evaluating the relationship between financial equity and educational outcomes. By integrating SQL, Python, and Tableau, the project provides actionable insights to inform equitable funding policies.

## Objectives
- Compare spending per student, funding gaps, and poverty rates across Arizona and Maine.
- Analyze the impact of funding and poverty on student test scores.
- Develop predictive models to understand key drivers of educational disparities.
- Present findings interactively through a Tableau dashboard.

---

## Phase 1: SQL Analysis
Processed and analyzed over 3 million public school district records to prepare data for Python and Tableau:
- **Key Findings**:
  - Maine’s average spending per student: **$13,748** vs. Arizona: **$9,385**.
  - Average funding gap: Maine surplus: **+$3,582** vs. Arizona deficit: **-$4,243**.
  - Academic outcome gap: Arizona **-0.30 SD** vs. Maine **+0.11 SD** relative to U.S. averages.
- Utilized SQL techniques for data cleaning, aggregations, transformations, and ranking to derive meaningful metrics and trends.

---

## Phase 2: Python Analysis (EDA and ML)
Used Python for data manipulation, visualization, and predictive modeling:
- **Exploratory Data Analysis**:
  - Higher poverty rates in Arizona (25.2%) compared to Maine (15.7%), correlating with poorer student outcomes.
  - Visualized disparities using scatter plots, box plots, and bar charts.
- **Machine Learning**:
  - Built a Linear Regression model in scikit-learn to predict test score gaps (Outcome Gap) based on funding, poverty rates, and spending.
  - **Model Performance**: MAE of **0.21**, identifying poverty as the strongest predictor of test scores.

---

## Phase 3: Tableau Dashboard
Created an interactive Tableau dashboard to showcase findings:
- **Visualizations**:
  - **State-Level Metrics**: Bar charts for spending, funding gaps, and poverty rates.
  - **Outcome Gaps**: Scatter plot linking funding gaps to test scores, emphasizing poverty as a key driver.
- Integrated interactive filters for user-driven exploration, enabling stakeholders to derive actionable insights.

---

## Technologies Used
- **SQL**: Data filtering, transformation, and analysis.
- **Python**: Data manipulation (`pandas`), visualization (`matplotlib`, `seaborn`), and machine learning (`scikit-learn`).
- **Tableau**: Dashboard creation for interactive data exploration.

---

## Insights & Recommendations
- **Arizona**:
  - Increase funding in high-poverty districts and address resource disparities.
  - Implement poverty reduction programs to improve student outcomes.
- **Maine**:
  - Maintain high funding levels and explore redistribution to support underperforming districts.

---

## Repository Links
- **SQL Queries**:
  - [SQL Code](./changing_datatypes.sql)
  - [SQL Code](./initial_analysis.sql)
- **Python Code**:
  - [EDA](./EDA.ipynb)
  - [ML](./ML%20Linear%20Regression.ipynb)
- **Dashboard**: [Tableau Public Dashboard](https://public.tableau.com/app/profile/gedeon.rugema7332/viz/AZ_ME_SchoolFunding/Dashboard2?publish=yes)

---
