# 🛒 Store Sales & Customer Behaviour Analysis

**SQL | Data Profiling | Data Quality Validation | Data Transformation | Business Analytics**

## 📌 1. Project Overview

This project analyses retail store sales and customer purchasing behaviour using SQL.

The objective is to examine raw retail data, assess data quality, create a standardized staging view, and extract business insights through structured SQL analysis.

The analysis focuses on purchase performance, product category contributions, customer demographics, seasonal distribution, payment preferences, discount behaviour, and product-level performance.

## 🎯 2. Business Objectives

This project aims to answer the following business questions:

1. **Overall Purchase Performance:** What are the total purchase value, number of purchase records, and average purchase amount?
2. **Category Performance:** Which product categories contribute the most to total purchase value?
3. **Customer Demographics:** How do purchasing patterns differ across age groups and gender?
4. **Season & Payment Distribution:** How are purchase records and purchase values distributed across seasons and payment methods?
5. **Discount & Rating Analysis:** How do purchase amounts vary across discount tiers, and how are purchased items rated?
6. **Product-Level Performance:** Which products contribute the most to purchase value within selected categories?

## 📊 3. Dataset Overview

The project uses a retail store sales dataset containing **5,000 purchase records** and 11 attributes.

Dataset attributes include:

- CustomerID
- Age
- Gender
- Category
- ItemPurchased
- Amount
- Season
- PaymentMethod
- ItemRating
- DiscountApplied(%)
- PreviousPurchases

The original CSV dataset is retained as the source for the SQL analysis workflow.

**Dataset considerations:**
- The dataset contains no transaction or order ID.
- No purchase date is available.
- Product cost and operating expenses are not provided.
- Purchase amount is treated as a sales-value measure, not profit.

## 🛠️ 4. SQL Workflow & Technical Implementation

The project follows a modular SQL workflow to separate data profiling, data quality checks, staging preparation, and business analysis.

| SQL File | Description |
|---|---|
| `01_data_profiling.sql` | Explores the raw dataset, record counts, NULL values, exact duplicate rows, and basic numeric distributions. |
| `01_data_quality_validation.sql` | Checks blank text values, potentially invalid numeric values, categorical consistency, and category-product mapping. |
| `02_cleaned_staging.sql` | Creates a standardized staging VIEW using snake_case column aliases and TRIM() on text fields. |
| `03_business_analysis_01_overall_metrics.sql` | Calculates overall purchase metrics and key performance indicators. |
| `03_business_analysis_02_category_performance.sql` | Evaluates purchase performance across product categories. |
| `03_business_analysis_03_demographics.sql` | Analyses purchasing patterns across age groups and gender. |
| `03_business_analysis_04_season_payment.sql` | Examines purchase distribution by season and payment method. |
| `03_business_analysis_05_discount_rating.sql` | Analyses discount tiers and customer item ratings. |
| `04_advanced_analysis.sql` | Performs additional category-payment comparisons and product-level analysis. |

### Technical Skills Applied

- SQL Aggregations: `SUM()`, `AVG()`, `COUNT()`, `MIN()`, `MAX()`
- Data Quality Checks: NULL, blank value, duplicate, and numeric validation
- Data Transformation: `TRIM()`, column aliasing, and SQL Views
- Conditional Logic: `CASE WHEN`
- Data Grouping: `GROUP BY` and `ORDER BY`
- Business KPI Calculation
- Modular SQL Script Organization

## 📈 5. Business Analysis Areas

### Overall Purchase Metrics

Evaluates total purchase value, number of purchase records, average purchase amount, and purchase amount distribution.

### Category Performance

Compares product categories based on purchase value and purchase record counts to identify major contributors.

### Customer Demographics

Segments purchasing behaviour by age groups and gender to explore differences in purchase patterns.

### Season & Payment Analysis

Examines how purchase records and purchase values are distributed across the available season and payment method categories.

### Discount & Rating Analysis

Compares purchase metrics across discount tiers and evaluates customer item ratings.

### Advanced Product Analysis

Explores product-level purchase performance and category-level payment method distribution.

## 💡 6. Business Value

The analysis provides a structured view of retail purchasing behaviour that can support exploratory business discussions around:

- Product category and inventory planning.
- Customer segmentation and marketing decisions.
- Reviewing purchase distribution across season categories.
- Understanding payment method preferences.
- Evaluating discount distribution and customer ratings.
- Identifying products with higher purchase value contributions.

These findings are exploratory and should be validated with additional business context before operational decisions are made.

## ⚠️ 7. Project Limitations

- The dataset does not contain a transaction or order ID. Each row is treated as a purchase record.
- No purchase date is available, so time-based trends cannot be evaluated.
- Season values are analysed as existing categories, not as evidence of changes over time.
- Product cost and operating expenses are unavailable; actual profit and profitability cannot be calculated.
- The staging view standardizes column names and trims text values. It does not perform extensive data correction or remove records.
- The analysis identifies patterns and associations, not causal relationships.

📊 8. Dashboard & Visualization
An interactive Power BI dashboard has been developed and added to the `reports/` folder to visually complement the modular SQL business analysis.

### 🖼️ Executive Summary (Page 1 Overview)
![Store Sales Power BI Dashboard](reports/dashboard_overview.png) *(Nota: Pastikan nama fail imej dalam folder reports/ sepadan dengan nama yang awak upload)*

### 🔍 Key Visual Highlights:
* **Global KPIs:** Displays core aggregate metrics including Total Sales (**$1.43M**), Total Records (**5K**), Average Purchase Value (**$285.09**), and transaction boundaries.
* **Category Breakdown:** Identifies **Electronics** as the highest revenue-generating category ($0.90M).
* **Seasonal & Payment Insights:** Evaluates purchase value distributions across all four seasons and preferred payment methods.
* **Customer Demographics & Discounts:** Maps out purchasing behavior across age groups, genders, and discount tiers.

A dashboard screenshot is provided in the `reports/` folder to complement the SQL analysis and present selected purchase performance metrics visually.

## 📁 9. Repository Structure

```text
store-sales-analysis/
│
├── csv/
├── reports/
│   └── dashboard screenshot
│
├── 01_data_profiling.sql
├── 01_data_quality_validation.sql
├── 02_cleaned_staging.sql
│
├── 03_business_analysis_01_overall_metrics.sql
├── 03_business_analysis_02_category_performance.sql
├── 03_business_analysis_03_demographics.sql
├── 03_business_analysis_04_season_payment.sql
├── 03_business_analysis_05_discount_rating.sql
│
├── 04_advanced_analysis.sql
├── Raw_store_sales.csv
├── README.md
└── LICENSE
```

## 🚀 10. Project Outcome

This project demonstrates the use of SQL to explore raw retail data, perform data quality validation, prepare a standardized staging view, calculate business metrics, and investigate purchasing patterns through modular analytical queries.

The workflow emphasizes structured SQL development, transparent data validation, reusable transformations, and business-focused analysis.

---

**Author:** Abdullah Bin Muhammad Nasir  
**GitHub:** [abdullahnasir906-beep](https://github.com/abdullahnasir906-beep)
