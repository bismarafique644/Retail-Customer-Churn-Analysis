/* ================================================================
PROJECT: RETAIL CUSTOMER CHURN ANALYSIS
GOAL: Identify key drivers of customer attrition to suggest retention strategies.
AUTHOR: [Your Name]
TOOLS: MySQL Workbench
================================================================
*/

-- 1. INITIAL DATA PROFILING
-- Checking total volume and basic churn metrics
SELECT COUNT(*) as total_customers FROM churn_retail;
SELECT SUM(Churn) as total_churned_customers FROM churn_retail;

-- 2. DATA QUALITY CHECK
-- Checking for missing values in key columns to ensure analysis reliability
SELECT 
    SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS missing_id,
    SUM(CASE WHEN Tenure IS NULL THEN 1 ELSE 0 END) AS missing_Tenure,
    SUM(CASE WHEN WarehouseToHome IS NULL THEN 1 ELSE 0 END) AS missing_warehouse
FROM churn_retail;

-- 3. KEY PERFORMANCE INDICATOR (KPI)
-- Calculating the overall Churn Rate for the business
SELECT 
    COUNT(*) AS total_customers,
    SUM(Churn) AS total_churn_customers,
    ROUND(SUM(Churn) * 100 / COUNT(*), 2) AS churn_percentage
FROM churn_retail;

-- 4. CUSTOMER LOYALTY ANALYSIS
-- Analyzing churn rate based on how long the customer has been with the company
SELECT 
    CASE 
        WHEN Tenure <= 6 THEN '0-6 Month'
        WHEN Tenure <= 12 THEN '6-12 Month'
        WHEN Tenure <= 24 THEN '1-2 year'
        ELSE '2+ Year'
    END AS Tenure_group,
    COUNT(*) AS total,
    SUM(Churn) AS total_churn_customers,
    ROUND(SUM(Churn) * 100 / COUNT(*), 2) AS churn_percentage
FROM churn_retail
GROUP BY Tenure_group
ORDER BY churn_percentage;

-- 5. DEVICE ANALYSIS
-- Investigating if login device affects the churn rate (Tech vs. User Experience check)
SELECT PreferredLoginDevice,
    COUNT(CustomerID) AS total,
    SUM(Churn) AS total_churn_customers,
    ROUND(SUM(Churn) * 100 / COUNT(*), 2) AS churn_rate
FROM churn_retail
GROUP BY PreferredLoginDevice
ORDER BY churn_rate DESC;

-- 6. LOGISTICS IMPACT
-- Measuring how warehouse distance correlates to churn
SELECT 
    WarehouseToHome, 
    AVG(Churn) * 100 as churn_rate,
    COUNT(*) as total_customers
FROM churn_retail
WHERE WarehouseToHome IS NOT NULL
GROUP BY WarehouseToHome
HAVING total_customers > 10
ORDER BY WarehouseToHome ASC;

-- 7. CUSTOMER SENTIMENT ANALYSIS
-- Quantifying the impact of complaints on customer retention
SELECT 
    Complain,
    COUNT(*) as total_customers,
    SUM(Churn) as churn_customers,
    ROUND(AVG(Churn) * 100, 2) as churn_rate
FROM churn_retailv_portfolio_churn_final
GROUP BY Complain;

-- 8. DATA PREPARATION FOR VISUALIZATION
-- Creating a view to feed into Power BI / Python for the final dashboard
CREATE OR REPLACE VIEW v_portfolio_churn_final AS
SELECT * FROM churn_retail WHERE CustomerID IS NOT NULL;


