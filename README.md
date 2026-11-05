# 🛒 Store Sales & Customer Behaviour Analysis

**SQL | Data Cleaning | Business Intelligence | Customer Analytics**

---

## 📌 1. Project Overview

This project analyses retail store sales and customer purchasing behaviour using SQL.

The objective is to transform raw retail data into structured analytical insights by performing data exploration, data cleaning, business KPI calculations, category-level performance analysis, and customer segmentation.

The analysis focuses on understanding sales distribution, customer purchasing patterns, product category performance, and discount behaviour to support data-driven business decisions.

## 🎯 2. Business Objectives

The analysis aims to answer the following core business questions:

1. **Overall Sales Performance:** What are the total revenue, transaction volume, and average order value (AOV)?
2. **Category Performance:** Which product categories generate the highest revenue and order volume?
3. **Customer Demographics:** How do purchasing patterns and spending behaviour vary across age groups and gender?
4. **Seasonal & Payment Trends:** How do sales fluctuate across seasons and preferred payment methods?
5. **Discount Impact:** How are discount tiers distributed, and how do they influence customer purchases?

## 🛠️ 3. SQL Workflow & Technical Implementation

The project follows a modular SQL workflow to maintain readable, scalable, and reusable analytical queries.

| SQL File | Description |
|---|---|
| `01_setup_and_explore.sql` | Explores raw data structure, record counts, and initial sales distribution. |
| `02_staging_and_cleaning.sql` | Creates a cleaned staging view, handles null values, trims text fields, and standardises data formats. |
| `03_business_analysis_01_overall_metrics.sql` | Calculates high-level business KPIs (total revenue, transaction count, min/max/avg purchase amounts). |
| `03_business_analysis_02_category_performance.sql` | Evaluates product category performance ranked by total revenue. |
| `03_business_analysis_03_demographics.sql` | Segment analysis covering age groups and gender purchasing trends. |
| `03_business_analysis_04_season_payment.sql` | Assesses seasonal demand shifts and preferred payment methods. |
| `03_business_analysis_05_discount_rating.sql` | Analyses discount distribution tiers and customer rating patterns. |

**Technical Skills Applied:**
- Advanced SQL Aggregations & Grouping (`GROUP BY`, `ORDER BY`, `CASE WHEN`)
- Data Cleaning & Transformation (`TRIM()`, NULL handling)
- Modular Query Design & Views Implementation
- Business KPI Analysis & Metric Extraction

## 📊 4. Key Business Insights

* **Revenue Drivers:** High-performing product categories consistently drive the bulk of total store revenue, indicating key inventory priorities.
* **Customer Demographics:** Spending distribution across specific age brackets highlights primary target segments for marketing campaigns.
* **Discount Sensitivity:** Analysis across discount tiers reveals customer response to promotional pricing strategies.

*(Detailed metrics and data visualizations can be explored directly through the modular SQL scripts in this repository.)*

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
├── 03_business_analysis_01_overall_metrics.sql
├── 03_business_analysis_02_category_performance.sql
├── 03_business_analysis_03_demographics.sql
├── 03_business_analysis_04_season_payment.sql
├── 03_business_analysis_05_discount_rating.sql
│
├── README.md
└── LICENSE
