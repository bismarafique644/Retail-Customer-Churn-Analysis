# 📊 **Customer Churn Analysis in Retail (SQL & Power BI)**

---

## **1. Project Overview**
Customer churn is one of the biggest challenges in the retail industry.  
This project analyzes a retail dataset of **5,000+ customers** to identify the key pain points leading to customer attrition.

By leveraging **SQL for deep data mining** and **Power BI for interactive storytelling**, this project identifies major churn drivers and proposes **data-driven retention strategies**.

---

## **2. Technical Stack**

1. **Database:** MySQL Workbench  
   - Data Cleaning  
   - Data Transformation  
   - Advanced Querying  

2. **Data Visualization:** Power BI Desktop  

3. **Data Connection:** MySQL → Power BI (Direct Import)

4. **Analytical Techniques:**
   1. RFM Segmentation  
   2. KPI Tracking  
   3. Correlation Analysis  

---

## **3. Repository Structure**

├── SQL_Scripts/
│ └── Contains  SQL file for data cleaning, profiling, and business views
│
├── Dashboard/
│ └── Power BI (.pbix) file for interactive analysis
│
├── dashboard_pdf/
│ └── PDF export of the dashboard for offline viewing
│
├── dashboard_image/
│ └── High-resolution screenshots of the final dashboard
│
├── dashboard_video/
│ └── Screen recording demonstrating interactive slicers and filters
│
└── dataset/
└── contain dataset files 


---

## **4. Technical Workflow**

### **4.1 Data Cleaning (SQL)**
1. Handled missing values in:
   - `Tenure`
   - `WarehouseToHome`
2. Removed duplicate customer records

### **4.2 Feature Engineering (SQL)**
1. Created a business-ready SQL view named:
   - `v_portfolio_churn_final`
2. Implemented custom **Tenure_Group** logic for customer segmentation

### **4.3 Visualization (Power BI)**
1. Connected MySQL to Power BI using **MySQL Connector/NET**
2. Designed an interactive dashboard with KPIs, filters, and slicers

### **4.4 Analysis**
1. Performed **Correlation Analysis** between:
   - Customer Complaints  
   - Distance from Warehouse  
   - Customer Churn Rate  

---

## **5. Key Business Insights**

1. **Onboarding Gap:**  
   45% of customer churn occurs within the **first 6 months**

2. **Service Friction:**  
   Customers with unresolved complaints are **3.5× more likely** to churn

3. **Logistic Barriers:**  
   Churn rate increases significantly for customers living **more than 15 km** from the warehouse

4. **Product Risk:**  
   The **Electronics** category shows the highest churn percentage compared to other categories

---

## **6. Strategic Recommendations**

1. **Retention Program:**  
   Launch a **“90-Day Check-in” loyalty campaign** to reduce early-stage churn

2. **Customer Support Optimization:**  
   Prioritize **at-risk customers** with complaints by offering:
   1. Faster issue resolution  
   2. Discount vouchers  

3. **Shipping Optimization:**  
   Re-evaluate delivery costs and timelines for **high-distance zones** to remain competitive

---

## **7. How to Run the Project**

1. Clone this repository
2. Execute SQL scripts from the `SQL_Scripts/` folder on your local MySQL server
3. Open the `.pbix` file in **Power BI Desktop**
4. Interact with the dashboard using filters and slicers

---

## **8. Tools & Technologies**

1. MySQL  
2. SQL  
3. Power BI  
4. Data Analytics  
5. Business Intelligence  

---
