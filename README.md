# 🛒 Store Sales & Customer Behaviour Analysis

**SQL | Data Profiling | Data Transformation | Business Analytics**

## 📌 1. Project Overview

This project analyses retail store sales and customer purchasing behaviour using SQL.

The objective is to transform raw retail data into a structured analytical dataset and extract business insights through data profiling, staging view creation, and business performance analysis.

The analysis focuses on purchase patterns, product category performance, customer demographics, seasonal distribution, payment preferences, and discount behaviour.

## 🎯 2. Business Objectives

This project aims to answer the following business questions:

1. **Overall Purchase Performance:** What are the total purchase amount, transaction volume, and average purchase amount?
2. **Category Performance:** Which product categories contribute the most to total purchase value and transaction volume?
3. **Customer Demographics:** How do purchasing patterns differ across age groups and gender?
4. **Seasonal & Payment Trends:** How are purchases distributed across seasons and payment methods?
5. **Discount & Rating Analysis:** How do purchase amounts vary across discount tiers, and how do customers rate purchased items?

## 📊 3. Dataset Overview

The project uses a retail store sales dataset containing customer, product, purchase, and discount-related information.

**Dataset attributes include:**

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

The dataset is provided in CSV format and retained as the original source for the SQL workflow.

## 🛠️ 4. SQL Workflow & Technical Implementation

The project follows a modular SQL workflow to separate data exploration, transformation, and business analysis.

| SQL File | Description |
|---|---|
| `01_data_profiling.sql` | Explores raw dataset structure, record counts, and initial data distribution. |
| `02_cleaned_staging.sql` | Creates a standardized staging VIEW, renames columns using snake_case, and trims whitespace from text fields. |
| `03_business_analysis_01_overall_metrics.sql` | Calculates overall purchase metrics and business KPIs. |
| `03_business_analysis_02_category_performance.sql` | Evaluates purchase performance across product categories. |
| `03_business_analysis_03_demographics.sql` | Analyses purchasing patterns across age groups and gender. |
| `03_business_analysis_04_season_payment.sql` | Examines purchase distribution by season and payment method. |
| `03_business_analysis_05_discount_rating.sql` | Analyses discount tiers and customer item ratings. |

### Technical Skills Applied

- SQL Aggregations: `SUM()`, `AVG()`, `COUNT()`, `MIN()`, `MAX()`
- Data Transformation: `TRIM()`, column aliasing, and SQL Views
- Conditional Logic: `CASE WHEN`
- Data Grouping: `GROUP BY` and `ORDER BY`
- Analytical Query Design
- Business KPI Calculation
- Modular SQL Script Organization

## 📈 5. Business Analysis Areas

### Overall Purchase Metrics
Evaluates total purchase value, transaction volume, average purchase amount, and purchase amount distribution.

### Category Performance
Compares product categories based on purchase value and transaction volume to identify major purchasing contributors.

### Customer Demographics
Segments purchasing behaviour by age groups and gender to identify differences in customer spending patterns.

### Seasonal & Payment Analysis
Examines how purchasing activity is distributed across seasons and payment methods.

### Discount & Rating Analysis
Compares purchase metrics across discount tiers and evaluates customer item ratings.

## 💡 6. Business Value

The analysis provides a structured view of retail purchasing behaviour that can support:

- Product category and inventory planning.
- Customer segmentation and marketing decisions.
- Understanding seasonal purchasing patterns.
- Reviewing payment method preferences.
- Evaluating discount distribution and customer ratings.

**Note:** Purchase amount is used as a sales-value metric in this project. The dataset does not contain product cost or operating expenses, so actual profit and profitability cannot be calculated. The analysis also identifies patterns and associations rather than proving causal relationships.

## 📁 7. Repository Structure

```text
store-sales-analysis/
│
├── csv/
│   └── Raw_store_sales.csv
│
├── reports/
│   └── screenshots/
│
├── 01_data_profiling.sql
├── 02_cleaned_staging.sql
│
├── 03_business_analysis_01_overall_metrics.sql
├── 03_business_analysis_02_category_performance.sql
├── 03_business_analysis_03_demographics.sql
├── 03_business_analysis_04_season_payment.sql
├── 03_business_analysis_05_discount_rating.sql
│
├── README.md
└── LICENSE
```

## 🚀 8. Project Outcome

This project demonstrates the application of SQL in preparing structured analytical data, developing reusable staging views, calculating business metrics, and translating retail purchasing data into actionable business analysis.

The workflow emphasizes readable SQL, reusable transformations, and business-focused analytical questions.

---

**Author:** Abdullah Bin Muhammad Nasir  
**GitHub:** [abdullahnasir906-beep](https://github.com/abdullahnasir906-beep)
