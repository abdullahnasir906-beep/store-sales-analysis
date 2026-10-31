# 🛒 Store Sales & Profitability Analysis (End-to-End Business Project)

## 📌 1. Business Problem & Context
* **The Scenario:** A retail and e-commerce company experienced steady growth in overall gross revenue over the past fiscal year, but executive leadership noticed a sharp decline in net profit margins. 
* **The Pain Point:** Management needed to identify which product categories, regions, or discount strategies were eating into profits so they could take corrective action without halting sales growth.

## 🎯 2. The Core Business Questions
To solve this, the data analysis addresses three key strategic questions:
1. Which product categories generate the highest revenue versus the highest net profit?
2. How do aggressive discounting strategies impact overall profit margins?
3. Which customer segments or geographic regions yield the highest customer lifetime value (LTV)?

---

## 🛠️ 3. Modular SQL Architecture (Technical Engineering)
To maintain clean engineering standards and production-grade code hygiene, the SQL analysis is split into logical, modular files inside the `/sql/` directory:

| File Name | Description & Purpose |
| :--- | :--- |
| `01_schema_setup.sql` | Defines the database schema, primary keys, and foreign keys (Star Schema design). |
| `02_data_cleaning_staging.sql` | Handles missing values, standardizes date formats, and removes duplicate records. |
| `03_business_kpis.sql` | Calculates core business metrics (Total Revenue, Gross Profit, Average Order Value). |
| `04_advanced_analysis.sql` | Utilizes advanced SQL (`CTE`, `Window Functions`, `RANK()`) for cohort & profit-margin analysis. |

---

## 📊 4. Key Findings & Visual Insights
*(Visualizations exported from SQL queries and built via Excel / Power BI)*

* **Finding 1:** While *Electronics* generate the highest gross revenue, high logistic costs and heavy discounting render them low-margin items.
* **Finding 2:** *Home Appliances* have lower sales volume but yield the highest net profit margin due to stable pricing and minimal discount interference.

*(Graf atau imej carta akan diletakkan di sini dalam folder `/images/`)*
