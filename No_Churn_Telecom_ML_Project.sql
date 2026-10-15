-- Project : Telecom -Churn Rate ML | Domain: Telecommunications
-- Name    : Harsh Aslekar | Team ID: PTID-CDS-JUL-26-11219
-- Databse : project_telecom Table : telecom_churn_data

USE telecom_churn_data;

-- -----------------------------------------------------------------
-- QUERY 1 : Understand the dataset
-- -----------------------------------------------------------------
SELECT *
FROM telecom_churn_data;

-- -----------------------------------------------------------------
-- QUERY 2 : Check table structure and size
-- -----------------------------------------------------------------
DESCRIBE telecom_churn_data;

-- -----------------------------------------------------------------
-- QUERY 3 : Count Total Customers
-- -----------------------------------------------------------------
SELECT COUNT(*) AS Total_Customers
FROM telecom_churn_data;

-- -----------------------------------------------------------------
-- QUERY 4 : Check Churn Categories
-- -----------------------------------------------------------------
SELECT churn, COUNT(*) AS customer_count
FROM telecom_churn_data
GROUP BY churn;

-- -----------------------------------------------------------------
-- QUERY 5 : Calculate the overall churn rate
-- -----------------------------------------------------------------
SELECT
COUNT(*) AS total_customers,
SUM(CASE WHEN churn = 'True' THEN 1 ELSE 0 END)
AS churned_customers,
ROUND(100.0 * SUM(CASE WHEN churn = 'True' THEN 1 ELSE 0 END) / COUNT(*),2)
AS churn_rate_percentage
FROM telecom_churn_data;

-- -----------------------------------------------------------------
-- QUERY 6 : Compare churned and retained customers
-- -----------------------------------------------------------------
SELECT
churn,
COUNT(*) AS Total_customers,
ROUND(AVG(''))










