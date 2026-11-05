# 🛒 Store Sales & Customer Behaviour Analysis

**SQL | Data Cleaning | Business Intelligence | Customer Analytics**

---

## 📌 1. Project Overview

This project analyses retail store sales and customer purchasing behaviour using SQL.

The objective is to transform raw retail data into structured analytical insights by performing data exploration, data cleaning, business KPI calculations, and category-level performance analysis.

The analysis focuses on understanding sales distribution, customer purchasing patterns, product category performance, and discount behaviour to support data-driven business decisions.

## 🎯 2. Business Objectives

The analysis aims to answer the following business questions:

1. **Overall Sales Performance:** What is the overall sales value, purchase volume, and average purchase amount?
2. **Category Performance:** Which product categories contribute the highest sales?
3. **Customer Behaviour:** How do customer demographics and purchasing patterns vary?
4. **Discount Analysis:** How are discounts distributed across customer purchases?
5. **Purchasing Trends:** How do purchasing patterns differ across seasons and payment methods?

## 🛠️ 3. SQL Workflow & Technical Implementation

The project follows a modular SQL workflow to maintain readable and reusable analytical queries.

| SQL File | Description |
|---|---|
| `01_setup_and_explore.sql` | Explores raw data structure, record counts, and initial sales distribution. |
| `02_staging_and_cleaning.sql` | Creates a cleaned staging view, handles null values, trims text fields, and removes exact duplicate rows. |
| `03_business_aggregations.sql` | Calculates overall sales KPIs, purchase volume, average purchase amount, and estimated discount value. |
| `04_category_performance.sql` | Analyses sales performance across product categories. |

**Technical Skills:**
- SQL data exploration and aggregation
- Data cleaning and validation
- Views and modular query design
- Aggregate functions (`SUM`, `AVG`, `COUNT`)
- Data transformation using `TRIM()` and `DISTINCT`
- Business KPI analysis

## 📊 4. Business Insights

This section presents key findings derived from actual SQL query results.

*Findings and recommendations will be documented after validating the analytical outputs.*

## 📁 5. Repository Structure

```text
store-sales-analysis/
│
├── csv/
│   └── Raw_store_sales.csv
│
├── reports/
│   └── screenshots/
│
├── 01_setup_and_explore.sql
├── 02_staging_and_cleaning.sql
├── 03_business_aggregations.sql
├── 04_category_performance.sql
│
├── README.md
└── LICENSE
```

## 📩 Contact & Professional Connect

**Author:** Abdullah Nasir

**GitHub:** [@abdullahnasir906-beep](https://github.com/abdullahnasir906-beep)
