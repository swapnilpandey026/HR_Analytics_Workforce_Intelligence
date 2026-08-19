# HR Analytics & Workforce Intelligence

An end-to-end **HR Business Analytics** project designed to analyze employee attrition, workforce composition, compensation, satisfaction, performance, career progression, and workforce risk using **Python, MySQL, Power BI, and DAX**.

> **Important:** This project does **not** use Machine Learning or predictive modeling. Employee risk analysis is based on a transparent, business-rule-based indicator derived from historical HR factors.

---

## 📌 Project Overview

Employee retention is an important business challenge for organizations. Understanding **who is leaving, where attrition is concentrated, and which workforce factors are associated with employee turnover** can help HR teams make better data-driven decisions.

This project analyzes the IBM HR Analytics Employee Attrition & Performance dataset to build an end-to-end HR analytics solution.

The project moves from:

**Raw HR Data → Python → MySQL → Power BI → DAX → Business Insights → HR Recommendations**

The goal is not simply to create charts, but to transform employee-level data into meaningful **workforce intelligence**.

---

## 🎯 Business Problem

HR teams need to understand:

* How is the workforce distributed across departments and job roles?
* What is the overall employee attrition rate?
* Which departments and job roles experience higher attrition?
* How are overtime and employee satisfaction associated with attrition?
* Does attrition vary across salary and tenure groups?
* Are employees experiencing long promotion gaps?
* Are high-performing employees leaving?
* Which workforce segments require greater retention attention?
* What HR actions could potentially improve employee retention?

---

## 🎯 Project Objectives

The project focuses on:

1. Workforce overview
2. Employee attrition analysis
3. Department analysis
4. Job-role analysis
5. Compensation analysis
6. Employee satisfaction analysis
7. Performance analysis
8. Tenure analysis
9. Overtime analysis
10. Promotion and career progression analysis
11. Training analysis
12. Employee demographic analysis
13. Statistical analysis of HR relationships
14. Rule-based employee attrition risk analysis
15. Data-backed HR recommendations

---

## 🗂️ Dataset

**Dataset:** IBM HR Analytics Employee Attrition & Performance

**Source:** Kaggle

Dataset link:

https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset

### Dataset Size

* **1,470 employees**
* **35 original columns**
* No missing values
* No duplicate rows

The dataset contains information related to:

* Employee demographics
* Department
* Job role
* Job level
* Salary
* Overtime
* Business travel
* Job satisfaction
* Environment satisfaction
* Work-life balance
* Performance
* Training
* Tenure
* Promotion history
* Employee attrition

---

# 🛠️ Technology Stack

| Technology     | Purpose                                                          |
| -------------- | ---------------------------------------------------------------- |
| **Python**     | Data cleaning, EDA, feature engineering and statistical analysis |
| **Pandas**     | Data manipulation and analysis                                   |
| **NumPy**      | Numerical operations                                             |
| **Matplotlib** | Data visualization                                               |
| **Seaborn**    | Statistical/business visualizations                              |
| **SciPy**      | Statistical hypothesis testing                                   |
| **MySQL**      | SQL-based business analysis                                      |
| **Power BI**   | Interactive dashboards                                           |
| **DAX**        | HR metrics and calculated measures                               |

### No Machine Learning

This project intentionally does **not** use:

* Machine Learning
* Deep Learning
* Predictive Modeling
* Neural Networks

---

# 🔄 Project Workflow

```text
Raw HR Dataset
      ↓
Data Understanding
      ↓
Python / Pandas
      ↓
Data Quality Validation
      ↓
Feature Engineering
      ↓
Exploratory Data Analysis
      ↓
Statistical Analysis
      ↓
MySQL
      ↓
SQL Business Analysis
      ↓
Power BI Data Model
      ↓
DAX Measures
      ↓
Interactive HR Dashboards
      ↓
Employee Attrition Risk Analysis
      ↓
Business Insights
      ↓
HR Recommendations
```

---

# 🐍 Phase 1 — Python Analytics

Python is used for data understanding, preparation, exploration and statistical analysis.

## Data Quality Analysis

The dataset is validated for:

* Missing values
* Duplicate records
* Data types
* Unique values
* Constant columns
* Categorical variables
* Numerical distributions
* Potential data-quality issues

---

## Feature Engineering

Business-friendly analytical features are created where appropriate.

### Age Group

Employees are grouped into meaningful age bands:

* Under 25
* 25–34
* 35–44
* 45–54
* 55+

### Salary Band

Monthly income is grouped into analytical salary bands.

### Tenure Group

Employees are segmented according to years spent at the company.

### Promotion Gap Group

Employees are grouped according to years since their last promotion.

### Current Role Tenure Group

Employees are segmented based on years spent in their current role.

### Satisfaction Categories

HR satisfaction ratings are transformed into interpretable analytical categories.

### Performance Category

Performance ratings are converted into readable business categories.

---

# 📊 Exploratory Data Analysis

The Python analysis investigates multiple HR dimensions.

## Workforce Analysis

* Total employees
* Active employees
* Attrition employees
* Department headcount
* Job-role distribution
* Gender distribution
* Age distribution
* Business travel
* Job levels
* Education

## Attrition Analysis

Attrition is analyzed across:

* Department
* Job role
* Age group
* Salary band
* Tenure
* Overtime
* Business travel
* Job satisfaction
* Work-life balance
* Performance
* Promotion gap
* Demographics

---

# 💰 Compensation Analysis

The project analyzes:

* Average monthly income
* Salary distribution
* Salary by department
* Salary by job role
* Salary by job level
* Salary vs performance
* Salary vs attrition
* Salary-band attrition patterns

---

# 📈 Performance & Career Development

The analysis investigates:

* Performance rating
* Performance by department
* Performance by job role
* Performance vs salary
* Performance vs attrition
* Training participation
* Years in current role
* Years since last promotion
* Promotion gaps
* Career progression patterns

---

# 😊 Employee Satisfaction Analysis

The project evaluates:

* Job satisfaction
* Environment satisfaction
* Work-life balance
* Job involvement
* Relationship satisfaction

These factors are analyzed in relation to historical employee attrition.

---

# ⏱️ Overtime Analysis

Overtime is analyzed across:

* Employee distribution
* Attrition
* Department
* Job role
* Job satisfaction
* Work-life balance
* High-performing employees

This helps identify workforce segments where workload may warrant HR attention.

---

# 🔬 Cross-Factor Analysis

Instead of analyzing every HR variable independently, multiple factors are combined to identify deeper workforce patterns.

Examples:

### Overtime + Job Satisfaction

```text
Overtime
      +
Job Satisfaction
      ↓
Historical Attrition Pattern
```

### Overtime + Work-Life Balance

```text
Overtime
      +
Work-Life Balance
      ↓
Attrition Pattern
```

### Job Role + Overtime

```text
Job Role
    +
Overtime
    ↓
Role-level Attrition
```

### Job Role + Promotion Gap

```text
Job Role
    +
Promotion Gap
    ↓
Career Progression / Attrition Pattern
```

### Performance + Salary

```text
Performance
     +
Salary Band
     ↓
Compensation & Retention Analysis
```

---

# 📐 Statistical Analysis

Statistical testing is used to validate important categorical relationships rather than relying only on visual patterns.

### Chi-Square Test

Examples include:

* Overtime vs Attrition
* Department vs Attrition
* Job Role vs Attrition
* Business Travel vs Attrition
* Satisfaction vs Attrition
* Tenure Group vs Attrition
* Promotion Gap vs Attrition
* Performance vs Attrition

The analysis uses a significance threshold of:

```text
α = 0.05
```

### Important Interpretation

A statistically significant association does **not** automatically mean that one factor causes another.

The project therefore distinguishes between:

> **Association**

and

> **Causation**

---

# ⚠️ Employee Attrition Risk Analysis

This project does **not** build a machine-learning prediction model.

Instead, a transparent **Rule-Based Employee Attrition Risk Indicator** is developed.

Potential factors include:

* Overtime
* Job satisfaction
* Environment satisfaction
* Work-life balance
* Job involvement
* Years since last promotion
* Years in current role
* Monthly income
* Business travel
* Job level
* Age / tenure where appropriate

A weighted business-rule framework will be developed after analyzing the actual dataset.

Employees will be classified into:

* **Low Risk**
* **Medium Risk**
* **High Risk**

### Important Definition

The risk score is:

> **A transparent business-rule-based indicator derived from historical HR characteristics.**

It is **not**:

* Machine-learning prediction
* Probability of future resignation
* A guaranteed prediction of employee behavior

---

# 🗄️ Phase 2 — MySQL / SQL Analytics

The cleaned and feature-engineered dataset will be loaded into MySQL.

SQL will be used to answer real HR business questions.

## Workforce Queries

* Total employees
* Active employees
* Attrition employees
* Attrition rate
* Department headcount
* Job-role headcount

## Attrition Queries

* Attrition by department
* Attrition by job role
* Attrition by age group
* Attrition by salary band
* Attrition by tenure
* Attrition by overtime
* Attrition by satisfaction
* Attrition by performance
* Attrition by business travel

## Compensation Queries

* Average salary
* Salary by department
* Salary by role
* Salary by job level
* Salary vs attrition

## Performance Queries

* Performance distribution
* Performance by department
* Performance vs salary
* Performance vs attrition
* Training vs performance

## Career Progression Queries

* Years since promotion
* Long promotion gaps
* Years in current role
* Promotion gap vs attrition

### SQL Techniques

Where appropriate, the project will demonstrate:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `CASE WHEN`
* Aggregations
* Subqueries
* CTEs
* Window Functions
* Conditional calculations

The goal is to use SQL techniques for meaningful business questions rather than adding complexity unnecessarily.

---

# 📊 Phase 3 — Power BI

The cleaned dataset will be connected to Power BI to build an interactive HR Workforce Intelligence dashboard.

## Dashboard Structure

Approximately **5 pages** will be developed.

---

## Page 1 — HR Executive Overview

### KPIs

* Total Employees
* Active Employees
* Attrition Count
* Attrition Rate
* Average Salary
* Average Tenure

### Visuals

* Workforce overview
* Department headcount
* Attrition by department
* Employee distribution
* Interactive slicers

---

## Page 2 — Attrition Intelligence

Purpose:

> Understand where historical employee attrition is concentrated.

Analysis includes:

* Attrition by department
* Attrition by job role
* Attrition by age group
* Attrition by salary band
* Attrition by overtime
* Attrition by job satisfaction
* Attrition by tenure
* Attrition by business travel

---

## Page 3 — Compensation & Performance

Analysis includes:

* Salary by department
* Salary by job role
* Salary vs performance
* Performance distribution
* Training
* Promotion
* High performers

---

## Page 4 — Employee Attrition Risk Analysis

The rule-based indicator will be visualized here.

Analysis includes:

* Low-risk employees
* Medium-risk employees
* High-risk employees
* Risk distribution
* Risk by department
* Risk by job role
* Risk by overtime
* Risk by satisfaction
* High-risk employee detail table

The page will explicitly use:

> **Employee Attrition Risk Analysis**

and not:

> Employee Attrition Prediction

---

## Page 5 — Workforce Deep Dive

HR users will be able to explore:

* Department
* Job role
* Gender
* Age group
* Education
* Marital status
* Business travel
* Tenure
* Salary

Interactive slicers and filters will allow deeper workforce analysis.

---

# 📐 DAX

Professional DAX measures will be created for important HR KPIs.

Examples:

* Total Employees
* Active Employees
* Attrition Count
* Attrition Rate
* Average Age
* Average Salary
* Average Monthly Income
* Average Years at Company
* Average Job Satisfaction
* Average Performance Rating
* Overtime Employees
* Overtime Rate
* High Performer Count
* Recent Promotion Count

DAX measures will be kept focused on meaningful business metrics.

---

# 🎨 Dashboard Design Principles

The Power BI dashboard will follow:

* Clean layout
* Consistent spacing
* Professional color palette
* Clear KPI cards
* Logical visual hierarchy
* Interactive slicers
* Tooltips
* Conditional formatting
* Clear titles and subtitles
* Recruiter-friendly presentation

The dashboard will prioritize **business usability over visual overcrowding**.

---

# 💡 Business Insights

After completing the analysis, actual findings will be documented using:

```text
Observation
      ↓
Business Meaning
      ↓
Recommendation
```

Potential areas include:

* Departments with high attrition
* High-attrition job roles
* Overtime patterns
* Satisfaction patterns
* Salary differences
* Promotion gaps
* Tenure patterns
* High-performer attrition
* Risk concentration

> Findings will be based on the actual analysis and will not be invented beforehand.

---

# 🎯 HR Business Recommendations

Recommendations will be developed based on actual findings.

Potential areas include:

### Retention

Identify workforce segments requiring targeted retention initiatives.

### Compensation

Investigate salary patterns where compensation and attrition show meaningful relationships.

### Overtime

Review workload and overtime concentration in departments or roles with concerning attrition patterns.

### Career Progression

Evaluate long promotion gaps and career progression opportunities.

### Employee Engagement

Focus on departments or employee segments showing lower satisfaction.

### Training

Assess the relationship between training, performance and workforce outcomes.

---

# 📁 Proposed Repository Structure

```text
HR-Analytics-Workforce-Intelligence/
│
├── data/
│   ├── raw/
│   │   └── WA_Fn-UseC_-HR-Employee-Attrition.csv
│   │
│   └── processed/
│       └── HR_Analytics_Feature_Engineered.csv
│
├── python/
│   └── HR_Analytics_Workforce_Intelligence.ipynb
│
├── sql/
│   └── HR_Analytics_SQL_Analysis.sql
│
├── powerbi/
│   └── HR_Workforce_Intelligence.pbix
│
├── analysis/
│   └── HR_Attrition_ChiSquare_Results.csv
│
├── screenshots/
│   ├── executive_overview.png
│   ├── attrition_intelligence.png
│   ├── compensation_performance.png
│   ├── employee_risk_analysis.png
│   └── workforce_deep_dive.png
│
└── README.md
```

---

# 📚 Skills Demonstrated

This project demonstrates practical skills in:

### Python

* Pandas
* NumPy
* Data cleaning
* Data validation
* Feature engineering
* EDA
* Data visualization
* Statistical analysis

### SQL

* Aggregations
* Grouping
* Conditional logic
* CTEs
* Subqueries
* Window functions
* Business-oriented SQL analysis

### Power BI

* Data modeling
* Interactive dashboards
* Slicers
* Filters
* Conditional formatting
* Data visualization

### DAX

* KPI measures
* `CALCULATE`
* `FILTER`
* `DISTINCTCOUNT`
* `DIVIDE`
* Context-aware calculations

### HR Business Analytics

* Attrition
* Retention
* Workforce analysis
* Compensation
* Employee satisfaction
* Performance
* Career progression
* Overtime
* Tenure
* Rule-based risk analysis

---

# 🚀 Project Outcome

The final project will provide HR stakeholders with an interactive analytical view of:

> **Who works in the organization → where attrition occurs → which workforce factors are associated with attrition → which employee segments require attention → what HR actions can be considered.**

The project demonstrates how a Data Analyst can combine:

**Python + SQL + Power BI + DAX + Business Analytics**

to convert raw HR data into actionable workforce intelligence.

---

# 📌 Key Project Statement

> **Built an end-to-end HR Workforce Intelligence solution using Python, MySQL, Power BI, and DAX to analyze employee attrition, workforce composition, compensation, satisfaction, performance, tenure, overtime, and career progression, incorporating statistical analysis and a transparent rule-based employee attrition risk indicator to support data-driven HR decision-making.**

---

# 👨‍💻 Author

**Swapnil Kumar Pandey**

B.Tech Computer Science & Engineering
Aspiring Data Analyst

### Core Skills

**Python | SQL | Power BI | DAX | Data Analytics | Data Visualization | HR Business Analytics**
