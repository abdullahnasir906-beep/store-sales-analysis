# 🛒 Store Sales & Customer Behaviour Analysis

**SQL | Data Analytics | Business Intelligence | Power BI**

## 📌 1. Project Overview

This project explores retail store sales and customer purchasing behaviour using SQL and business-focused data analysis.

The objective is to examine purchasing patterns, evaluate product category performance, understand customer demographics, and identify differences in purchasing behaviour across payment methods, seasons, discounts, and product ratings.

Through structured data profiling, data quality validation, data transformation, and exploratory analysis, this project aims to turn raw retail data into meaningful business insights that can support better business understanding and decision-making.

## 🎯 2. Business Objectives

This project aims to answer the following business questions:

- **Overall Purchase Performance:** What is the total purchase value, number of purchase records, and average purchase amount?
- **Category Performance:** Which product categories contribute the most to overall purchase value and purchase volume?
- **Customer Demographics:** How do purchasing patterns differ across customer age groups and gender?
- **Season & Payment Behaviour:** How are purchases distributed across seasons and payment methods?
- **Discount & Rating Analysis:** How do purchase metrics vary across discount tiers, and how are purchased items rated?
- **Product Performance:** Which electronics products contribute the most to purchase value?

## 📊 3. Dataset Overview

The analysis uses a retail store sales dataset containing **5,000 purchase records** and customer, product, and purchase-related attributes.

The dataset includes the following fields:

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

The original CSV dataset is retained as the source for the analysis workflow.

## 🛠️ 4. Data Preparation & Analytical Approach

The project follows a structured workflow to prepare the dataset and perform business-focused analysis.

**Data Profiling & Quality Validation**
- Examined dataset structure, record volume, and CustomerID uniqueness.
- Checked missing values, blank text fields, and exact duplicate records.
- Reviewed numeric ranges and categorical value consistency.
- Examined category and product combinations.

**Data Transformation**
- Created a reusable SQL staging view.
- Standardized column names using snake_case aliases.
- Applied TRIM() to text fields to remove leading and trailing whitespace.
- Preserved the original source table.

**Business Analysis**
- Calculated overall purchase metrics and KPIs.
- Compared purchase performance across product categories.
- Examined purchasing patterns by age group and gender.
- Analysed purchase distribution across seasons and payment methods.
- Evaluated discount tiers and item ratings.
- Performed additional category-payment and electronics product analysis.

### Technical Skills Applied

- SQL Aggregations: SUM(), AVG(), COUNT(), MIN(), MAX()
- Data Transformation: TRIM(), column aliasing, SQL Views
- Conditional Logic: CASE WHEN
- Data Grouping: GROUP BY and ORDER BY
- Data Quality Validation
- Exploratory Data Analysis
- Business KPI Calculation
- Analytical Query Design

## 📈 5. Business Analysis Areas

**Overall Purchase Performance**

Evaluates total purchase value, purchase record volume, average purchase amount, and purchase amount distribution.

**Category Performance**

Identifies product categories with the highest purchase value and purchase record volume to understand their contribution to overall sales value.

**Customer Demographics**

Examines purchasing patterns across age groups and gender to identify differences in average and total purchase amounts.

**Season & Payment Analysis**

Compares purchase distribution and value across seasons and payment methods to understand purchasing behaviour within the dataset.

**Discount & Rating Analysis**

Evaluates purchase metrics across discount tiers and examines the distribution of item ratings.

**Advanced Product & Payment Analysis**

Explores purchase performance across product categories and payment methods, including product-level performance within the Electronics category.

## 💡 6. Key Business Findings

The analysis produced several notable findings:

- **Electronics leads in purchase value**, contributing approximately 62.8% of the overall purchase amount.
- **Footwear records the highest purchase volume** among product categories, with 983 purchase records.
- **Laptop leads Electronics product performance**, recording the highest total purchase amount of 265,862.26.
- **Card payments account for a substantially higher purchase value** than Cash on Delivery across the dataset.
- **Discounts between 11% and 20% represent the largest discount tier** by purchase record volume.

These findings describe patterns observed in the dataset and do not establish causal relationships.

## 📌 7. Business Recommendations

Based on the observed findings, the following areas may warrant further business investigation:

- **Inventory Planning:** Monitor high-performing categories and products, particularly Electronics and Laptop, when reviewing inventory requirements.
- **Product Performance Review:** Investigate differences in purchase value and average purchase amounts across individual products.
- **Payment Behaviour:** Review payment method distribution across categories to better understand customer payment preferences.
- **Customer Segmentation:** Use demographic purchasing patterns as a starting point for further customer analysis.
- **Discount Strategy:** Examine discount distribution alongside purchase behaviour before evaluating promotional effectiveness.

These recommendations are exploratory and should be validated with additional business data before implementation.

## 📊 8. Dashboard & Visualization

A Power BI dashboard accompanies the SQL analysis to present key purchase metrics and purchasing patterns in a visual format.

The dashboard provides a consolidated view of purchase performance and supports easier exploration of the analytical findings.

## ⚠️ 9. Project Limitations

- The dataset does not contain product cost or operating expenses; therefore, actual profit and profitability cannot be calculated.
- No transaction date is available, so historical sales trends and time-based seasonality cannot be established.
- CustomerID uniqueness is assessed only within the available dataset.
- Purchase patterns and relationships identified in the analysis do not prove causation.
- The dataset does not provide sufficient information to explain the reasons behind customer purchasing decisions.

## 📁 10. Repository Structure

```text
store-sales-analysis/
│
├── csv/
│   └── Raw_store_sales.csv
│
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
│
├── README.md
└── LICENSE
```

## 🚀 11. Project Outcome

This project demonstrates the application of SQL to explore retail purchasing data, perform data quality validation, create reusable analytical views, calculate business metrics, and identify purchasing patterns.

It also demonstrates the ability to interpret analytical results and translate data findings into practical business recommendations.

The project reflects an end-to-end analytical approach, from raw data exploration to business-focused insights and dashboard presentation.

---

**Author:** Abdullah Bin Muhammad Nasir  
**GitHub:** [abdullahnasir906-beep](https://github.com/abdullahnasir906-beep)