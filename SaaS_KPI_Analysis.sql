-- 1. Calculate Monthly Recurring Revenue (MRR)
-- This tells the CEO how much money we make per month from active users.
SELECT SUM(MonthlyCharges) AS Total_MRR 
FROM subscriptions_table 
WHERE Churn = 'No';


-- 2. Calculate Overall Churn Rate
-- This tells us what percentage of our customer base left the platform.
SELECT 
    ROUND((SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS Churn_Rate_PercentageS
FROM subscriptions_table;


-- 3. Calculate Average Revenue Per User (ARPU)
-- This tells us how much each customer is worth on average.
SELECT AVG(MonthlyCharges) AS ARPU 
FROM subscriptions_table 
WHERE Churn = 'No';


-- 4. Contract Risk Analysis (Structural Vulnerability)
-- Identifying churn rates across different contract terms to determine 
-- which billing models pose the highest risk to long-term revenue stability.
-- This drives the strategy for "Term Conversion" marketing campaigns.
SELECT 
    Contract, 
    COUNT(customerID) AS Total_Customers,
    ROUND((SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS Churn_Rate
FROM subscriptions_table
GROUP BY Contract;