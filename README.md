# Retail-Customer-Churn-Analysis
End-to-end data analysis project using MySQL and Power BI to identify customer attrition drivers
**
Project Overview**
Customer churn is one of the biggest challenges in the retail industry. This project aims to analyze a retail dataset of 5,000+ customers to identify the pain points leading to attrition. By leveraging SQL for deep data mining and Power BI for interactive storytelling, I identified key drivers of churn and proposed data-driven retention strategies.

**Technical Stack**
Database: MySQL Workbench (Data Cleaning, Transformation, and Advanced Querying)

Data Visualization: Power BI Desktop

Data Connection: MySQL-to-Power BI (Direct Import)

Analytical Techniques: RFM Segmentation, KPI Tracking, Correlation Analysis
**
Repository Structure**
SQL_Scripts/: Contains all .sql files used for data cleaning, profiling, and creating business views.

Dashboard/: The original .pbix Power BI file for interactive analysis.

dashboard_pdf/: A PDF export of the report for quick offline viewing.

dashboard_image/: High-resolution screenshots of the final dashboard.

dashboard_video/: A screen recording demonstrating the interactive slicers and filters.

dataset/: The raw data files and documentation of the dataset schema.


**Technical Workflow**
Data Cleaning (SQL): Handled missing values in Tenure and WarehouseToHome columns and removed duplicates.

Feature Engineering (SQL): Created a v_portfolio_churn_final view with a custom Tenure_Group logic.

Visualization (Power BI): Connected MySQL to Power BI via the MySQL Connector/NET to build a live-refresh dashboard.

Analysis: Performed Correlation Analysis between Complaints, Distance, and Churn Rate.
**
Key Business Insights**
The Onboarding Gap: 45% of churn happens within the first 6 months.

Service Friction: Customers with unresolved complaints are 3.5x more likely to leave.

Logistic Barriers: Churn rate spikes significantly for customers living >15km from the warehouse.

Product Risk: The "Electronics" category shows the highest churn percentage compared to other categories.


**Strategic Recommendations**
Retention Program: Launch a "90-Day Check-in" loyalty campaign for new users to reduce early-stage churn.

Customer Support: Prioritize "At-Risk" customers who have filed a complaint by offering immediate resolution or discount vouchers.

Shipping Optimization: Evaluate shipping costs and delivery times for high-distance zones to remain competitive.

**How to Run**
Clone this repository.

Run the scripts in the SQL_Scripts/ folder on your local MySQL server.

Open the .pbix file in Power BI Desktop to interact with the visual report.

