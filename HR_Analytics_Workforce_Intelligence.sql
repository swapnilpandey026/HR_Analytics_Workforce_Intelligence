-- HR ANALYTICS & WORKFORCE INTELLIGENCE | MySQL 8.0+
-- Author: Swapnil Kumar Pandey
-- Database: hr_analytics | Table: employees
-- No Machine Learning. Risk section is a rule-based indicator, NOT prediction.

CREATE DATABASE IF NOT EXISTS hr_analytics;
USE hr_analytics;

-- 01-07 SETUP + VALIDATION
SHOW TABLES;
DESCRIBE employees;
SELECT * FROM employees LIMIT 10;
SELECT COUNT(*) AS total_employees FROM employees;
SELECT COUNT(*) AS total_rows, COUNT(DISTINCT EmployeeNumber) AS unique_employees FROM employees;
SELECT EmployeeNumber, COUNT(*) AS duplicates FROM employees GROUP BY EmployeeNumber HAVING COUNT(*) > 1;
SELECT
SUM(EmployeeNumber IS NULL) AS missing_employee_number,
SUM(Attrition IS NULL) AS missing_attrition,
SUM(Department IS NULL) AS missing_department,
SUM(JobRole IS NULL) AS missing_job_role,
SUM(MonthlyIncome IS NULL) AS missing_income,
SUM(YearsAtCompany IS NULL) AS missing_tenure
FROM employees;
SELECT Attrition, COUNT(*) AS employees FROM employees GROUP BY Attrition;
SELECT Department, COUNT(*) AS employees FROM employees GROUP BY Department;
SELECT JobRole, COUNT(*) AS employees FROM employees GROUP BY JobRole;
SELECT OverTime, COUNT(*) AS employees FROM employees GROUP BY OverTime;

-- 08-12 WORKFORCE KPIs
SELECT COUNT(*) Total_Employees,
SUM(Attrition='No') Active_Employees,
SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct,
ROUND(AVG(Age),1) Average_Age,
ROUND(AVG(MonthlyIncome),0) Average_Monthly_Income,
ROUND(AVG(YearsAtCompany),1) Average_Tenure
FROM employees;

SELECT Attrition, COUNT(*) Employees,
ROUND(100*COUNT(*)/SUM(COUNT(*)) OVER(),2) Workforce_Share_Pct
FROM employees GROUP BY Attrition;

SELECT Department, COUNT(*) Employees,
ROUND(100*COUNT(*)/SUM(COUNT(*)) OVER(),2) Workforce_Share_Pct
FROM employees GROUP BY Department ORDER BY Employees DESC;

SELECT JobRole, COUNT(*) Employees FROM employees GROUP BY JobRole ORDER BY Employees DESC;

SELECT JobLevel, COUNT(*) Employees, ROUND(AVG(MonthlyIncome),0) Avg_Income,
ROUND(AVG(YearsAtCompany),1) Avg_Tenure
FROM employees GROUP BY JobLevel ORDER BY JobLevel;

-- 13-17 ATTRITION
SELECT Department, COUNT(*) Employees, SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY Department ORDER BY Attrition_Rate_Pct DESC;

SELECT JobRole, COUNT(*) Employees, SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY JobRole ORDER BY Attrition_Rate_Pct DESC;

SELECT Gender, COUNT(*) Employees, SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY Gender ORDER BY Attrition_Rate_Pct DESC;

SELECT MaritalStatus, COUNT(*) Employees, SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY MaritalStatus ORDER BY Attrition_Rate_Pct DESC;

SELECT BusinessTravel, COUNT(*) Employees, SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY BusinessTravel ORDER BY Attrition_Rate_Pct DESC;

SELECT OverTime, COUNT(*) Employees, SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY OverTime ORDER BY Attrition_Rate_Pct DESC;

SELECT JobInvolvement, COUNT(*) Employees, SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY JobInvolvement ORDER BY JobInvolvement;

-- 18 AGE
SELECT CASE
WHEN Age<25 THEN 'Under 25' WHEN Age BETWEEN 25 AND 34 THEN '25-34'
WHEN Age BETWEEN 35 AND 44 THEN '35-44' WHEN Age BETWEEN 45 AND 54 THEN '45-54'
ELSE '55+' END Age_Group,
COUNT(*) Employees, SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY Age_Group
ORDER BY FIELD(Age_Group,'Under 25','25-34','35-44','45-54','55+');

-- 19-22 COMPENSATION
SELECT Department, COUNT(*) Employees, ROUND(AVG(MonthlyIncome),0) Avg_Income,
MIN(MonthlyIncome) Min_Income, MAX(MonthlyIncome) Max_Income
FROM employees GROUP BY Department ORDER BY Avg_Income DESC;

SELECT JobRole, COUNT(*) Employees, ROUND(AVG(MonthlyIncome),0) Avg_Income
FROM employees GROUP BY JobRole ORDER BY Avg_Income DESC;

SELECT JobLevel, COUNT(*) Employees, ROUND(AVG(MonthlyIncome),0) Avg_Income
FROM employees GROUP BY JobLevel ORDER BY JobLevel;

SELECT CASE WHEN MonthlyIncome<3000 THEN 'Low'
WHEN MonthlyIncome<7000 THEN 'Medium'
WHEN MonthlyIncome<12000 THEN 'High' ELSE 'Very High' END Salary_Band,
COUNT(*) Employees, ROUND(AVG(MonthlyIncome),0) Avg_Income,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY Salary_Band
ORDER BY FIELD(Salary_Band,'Low','Medium','High','Very High');

-- 23-25 SATISFACTION
SELECT JobSatisfaction, COUNT(*) Employees, SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY JobSatisfaction ORDER BY JobSatisfaction;

SELECT EnvironmentSatisfaction, COUNT(*) Employees,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY EnvironmentSatisfaction ORDER BY EnvironmentSatisfaction;

SELECT WorkLifeBalance, COUNT(*) Employees,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY WorkLifeBalance ORDER BY WorkLifeBalance;

-- 26-27 PERFORMANCE + TRAINING
SELECT PerformanceRating, COUNT(*) Employees, ROUND(AVG(MonthlyIncome),0) Avg_Income,
SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY PerformanceRating ORDER BY PerformanceRating;

SELECT TrainingTimesLastYear, COUNT(*) Employees,
ROUND(AVG(PerformanceRating),2) Avg_Performance,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY TrainingTimesLastYear ORDER BY TrainingTimesLastYear;

-- 28-29 TENURE + PROMOTION
SELECT CASE WHEN YearsAtCompany<=2 THEN '0-2 Years'
WHEN YearsAtCompany<=5 THEN '3-5 Years' WHEN YearsAtCompany<=10 THEN '6-10 Years'
ELSE '10+ Years' END Tenure_Group,
COUNT(*) Employees, SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY Tenure_Group
ORDER BY FIELD(Tenure_Group,'0-2 Years','3-5 Years','6-10 Years','10+ Years');

SELECT CASE WHEN YearsSinceLastPromotion<=2 THEN '0-2 Years'
WHEN YearsSinceLastPromotion<=5 THEN '3-5 Years' ELSE '6+ Years' END Promotion_Gap,
COUNT(*) Employees, SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY Promotion_Gap ORDER BY Attrition_Rate_Pct DESC;

SELECT YearsInCurrentRole, COUNT(*) Employees,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY YearsInCurrentRole ORDER BY YearsInCurrentRole;

-- 30 ADVANCED SQL: CTE
WITH department_metrics AS (
SELECT Department, COUNT(*) Employees,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY Department)
SELECT * FROM department_metrics ORDER BY Attrition_Rate_Pct DESC;

-- 31 ADVANCED SQL: WINDOW FUNCTION
WITH department_metrics AS (
SELECT Department, COUNT(*) Employees,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY Department)
SELECT Department, Employees, Attrition_Rate_Pct,
DENSE_RANK() OVER(ORDER BY Attrition_Rate_Pct DESC) Attrition_Rank
FROM department_metrics;

-- 32 MULTI-FACTOR: OVERTIME + SATISFACTION
SELECT OverTime, JobSatisfaction, COUNT(*) Employees,
SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY OverTime, JobSatisfaction
ORDER BY Attrition_Rate_Pct DESC;

-- 33 MULTI-FACTOR: JOB ROLE + OVERTIME
SELECT JobRole, OverTime, COUNT(*) Employees,
SUM(Attrition='Yes') Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Attrition_Rate_Pct
FROM employees GROUP BY JobRole, OverTime
ORDER BY Attrition_Rate_Pct DESC;

-- 34 RULE-BASED EMPLOYEE ATTRITION RISK SCORE
-- NOT ML and NOT prediction.
-- Overtime +2; low satisfaction +2; low work-life balance +1;
-- promotion gap >=5 years +1; monthly income <3000 +1.
SELECT EmployeeNumber, Department, JobRole, OverTime, JobSatisfaction,
WorkLifeBalance, YearsSinceLastPromotion, MonthlyIncome,
(CASE WHEN OverTime='Yes' THEN 2 ELSE 0 END+
 CASE WHEN JobSatisfaction<=2 THEN 2 ELSE 0 END+
 CASE WHEN WorkLifeBalance<=2 THEN 1 ELSE 0 END+
 CASE WHEN YearsSinceLastPromotion>=5 THEN 1 ELSE 0 END+
 CASE WHEN MonthlyIncome<3000 THEN 1 ELSE 0 END) Risk_Score
FROM employees ORDER BY Risk_Score DESC;

-- 35 RULE-BASED RISK CLASSIFICATION
WITH risk_scored AS (
SELECT EmployeeNumber, Department, JobRole,
(CASE WHEN OverTime='Yes' THEN 2 ELSE 0 END+
 CASE WHEN JobSatisfaction<=2 THEN 2 ELSE 0 END+
 CASE WHEN WorkLifeBalance<=2 THEN 1 ELSE 0 END+
 CASE WHEN YearsSinceLastPromotion>=5 THEN 1 ELSE 0 END+
 CASE WHEN MonthlyIncome<3000 THEN 1 ELSE 0 END) Risk_Score
FROM employees)
SELECT EmployeeNumber, Department, JobRole, Risk_Score,
CASE WHEN Risk_Score>=5 THEN 'High Risk'
WHEN Risk_Score>=3 THEN 'Medium Risk' ELSE 'Low Risk' END Risk_Level
FROM risk_scored ORDER BY Risk_Score DESC;

-- 36 RISK DISTRIBUTION + HISTORICAL ATTRITION
WITH risk_scored AS (
SELECT Attrition,
(CASE WHEN OverTime='Yes' THEN 2 ELSE 0 END+
 CASE WHEN JobSatisfaction<=2 THEN 2 ELSE 0 END+
 CASE WHEN WorkLifeBalance<=2 THEN 1 ELSE 0 END+
 CASE WHEN YearsSinceLastPromotion>=5 THEN 1 ELSE 0 END+
 CASE WHEN MonthlyIncome<3000 THEN 1 ELSE 0 END) Risk_Score
FROM employees),
risk_classified AS (
SELECT Attrition, Risk_Score,
CASE WHEN Risk_Score>=5 THEN 'High Risk'
WHEN Risk_Score>=3 THEN 'Medium Risk' ELSE 'Low Risk' END Risk_Level
FROM risk_scored)
SELECT Risk_Level, COUNT(*) Employees, SUM(Attrition='Yes') Historical_Attrition_Count,
ROUND(100*SUM(Attrition='Yes')/COUNT(*),2) Historical_Attrition_Rate_Pct
FROM risk_classified
GROUP BY Risk_Level
ORDER BY FIELD(Risk_Level,'High Risk','Medium Risk','Low Risk');

-- END
