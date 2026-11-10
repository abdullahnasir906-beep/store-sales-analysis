# 🛒 Store Sales & Customer Behaviour Analysis

### SQL | Data Profiling | Data Quality Validation | Data Transformation | Star Schema Modeling | Business Analytics | Power BI

---

## 📌 1. Project Overview

This project explores retail purchasing patterns through SQL-based data analysis, a structured Star Schema data model, and Power BI visualization.

The objective was to transform raw retail data into a normalized analytical dataset using a Star Schema architecture, assess data quality, and investigate purchasing patterns across product categories, customer demographics, seasons, payment methods, discount levels, and products.

Rather than focusing solely on data preparation, this project also emphasizes translating analytical results into meaningful business observations that can support further investigation and decision-making.

**Project Workflow:**

`Raw Dataset → Data Profiling → Data Quality Validation → SQL Transformation → Power BI Star Schema Modeling → Business Analysis → Power BI Dashboard`

---

## 🎯 2. Business Objectives

The analysis was designed to address the following business questions:

| Business Area | Key Business Question |
|---|---|
| Overall Purchase Performance | What are the total purchase value, number of purchase records, and average purchase value? |
| Category Performance | Which product categories contribute the most to purchase value and purchase volume? |
| Customer Demographics | How does average purchase value differ across age groups and gender segments? |
| Seasonal & Payment Analysis | How are purchase records and purchase values distributed across seasons and payment methods? |
| Discount & Rating Analysis | How do purchase metrics and item ratings vary across discount tiers? |
| Product-Level Analysis | Which products contribute the most to purchase value within selected categories? |

---

## 📊 3. Dataset Overview

The project uses a retail store sales dataset containing **5,000 purchase records** and **11 attributes**.

**Dataset Attributes:**

- `CustomerID`
- `Age`
- `Gender`
- `Category`
- `ItemPurchased`
- `Amount`
- `Season`
- `PaymentMethod`
- `ItemRating`
- `DiscountApplied(%)`
- `PreviousPurchases`

### Dataset Considerations

- No transaction or order ID is available.
- No purchase date is provided.
- Product costs and operating expenses are not included.
- Each row is treated as an individual purchase record for analysis.
- Purchase amount represents the recorded purchase value, not profit or net revenue.

These limitations define the scope of the analysis and prevent unsupported conclusions about profitability, customer retention, or time-based sales trends.

---

## 🛠️ 4. SQL Workflow & Power BI Data Modeling

The project uses a modular SQL workflow combined with a clean Star Schema data model in Power BI to ensure performance, maintainability, and accurate filtering relationships.

### 4.1 Data Profiling

**File:** `01_data_profiling.sql`

Explored the raw dataset to understand its structure and assess its initial condition.

Activities included:
- Reviewing sample records and column structures.
- Checking total record counts.
- Identifying NULL values.
- Checking exact duplicate rows.
- Examining basic numeric distributions.

### 4.2 Data Quality Validation

**File:** `01_data_quality_validation.sql`

Performed additional checks to identify potential data quality issues before business analysis.

Activities included:
- Checking blank and whitespace-only text values.
- Validating potentially invalid numeric values.
- Reviewing categorical value consistency.
- Checking category and product mapping.

### 4.3 Data Transformation & Staging

**File:** `02_cleaned_staging.sql`

Created a standardized SQL staging view named `vw_cleaned_store_sales` while preserving the original raw dataset.

Transformation activities included:
- Applying `TRIM()` to text fields.
- Standardizing column names using `snake_case`.
- Creating consistent field aliases for downstream analysis.
- Separating the cleaned analytical view from the original raw data.

### 4.4 Power BI Star Schema Modeling

To optimize reporting performance and prevent circular dependencies, the data model was structured into a clean **Star Schema** using Power Query:

- **Fact Table (`store_sales`):** Retains all transaction records and foreign keys (`CustomerID`, `ItemPurchased`, `PaymentMethod`) to preserve transactional granularity.
- **Dimension Tables:** Created via Power Query references and deduplicated to act as unique master lists:
  - `dim_customers`: Contains unique customer demographics (`CustomerID`, `Age`, `Gender`, `PreviousPurchases`).
  - `dim_products`: Contains unique item listings (`Category`, `ItemPurchased`).
  - `dim_payment`: Contains unique payment methods and seasonal mappings (`PaymentMethod`, `Season`).
- **Model Relationships:** Established active **1-to-Many (1 to *)** relationships from the dimension tables to the central fact table.

### 4.5 Business Analysis

Organized SQL analysis into separate scripts to improve readability, maintainability, and traceability.

| SQL File | Analytical Focus |
|---|---|
| `03_business_analysis_01_overall_metrics.sql` | Overall purchase metrics and KPIs |
| `03_business_analysis_02_category_performance.sql` | Category-level purchase performance |
| `03_business_analysis_03_demographics.sql` | Purchasing patterns by age group and gender |
| `03_business_analysis_04_season_payment.sql` | Seasonal and payment method distribution |
| `03_business_analysis_05_discount_rating.sql` | Discount tiers and item rating analysis |
| `04_advanced_analysis.sql` | Category-payment comparisons and product-level analysis |

### Technical Skills Applied

- **SQL Aggregations:** `SUM()`, `AVG()`, `COUNT()`, `MIN()`, `MAX()`
- **Data Modeling:** Star Schema design, 1-to-Many relationships, handling dimension reference tables, and deduplication
- **Data Quality Validation:** NULL, blank value, duplicate, and numeric checks
- **Data Transformation:** `TRIM()`, column aliasing, and SQL Views
- **Conditional Logic:** `CASE WHEN`
- **Data Grouping & Sorting:** `GROUP BY`, `ORDER BY`

---

## 🔍 5. Key Business Findings & Analytical Insights

The SQL analysis identified several patterns in purchase value, category contribution, purchase volume, and customer segments.

The findings below distinguish observed results from possible business interpretations.

### 5.1 Overall Purchase Performance

**Situation & Objective**

Establish an overall baseline to understand the scale and average value of purchasing activity within the dataset.

**Analysis & Finding**

SQL aggregation identified the following metrics:

| Metric | Result |
|---|---:|
| Total Purchase Value | **$1.43M** |
| Purchase Records | **5,000** |
| Average Purchase Value | **$285.09** |

**Business Interpretation**

These metrics provide a baseline for comparing purchasing activity across product categories and customer segments.

They also establish the overall context for the more detailed analyses that follow.

### 5.2 Product Category Performance

**Situation & Objective**

Understand how purchase value is distributed across different product categories.

**Analysis & Finding**

Electronics recorded approximately **$0.90M** in purchase value, making it the largest category by purchase value in the dataset.

**Business Interpretation**

Electronics represents a substantial contribution to the overall purchase value.

This makes it a relevant category for further investigation into product mix, inventory requirements, and category-level purchasing patterns.

### 5.3 Customer Demographic Analysis

**Situation & Objective**

Explore whether purchasing patterns differ across customer age groups and gender segments.

**Analysis & Finding**

Within the 31–40 age group:

| Gender | Purchase Records | Average Purchase Value |
|---|---:|---:|
| Male | 456 | **$520.75** |
| Female | 484 | **$110.23** |

**Business Interpretation**

The results show a notable difference in average purchase value between the two demographic segments within this age group.

This observation could be used as a starting point for further investigation into category preferences and product purchasing patterns.

However, the results do not establish why the difference exists or whether gender is a contributing factor.

### 5.4 Seasonal & Payment Method Analysis

**Situation & Objective**

Examine how purchasing activity is distributed across available seasons and payment methods.

**Analysis & Finding**

Within the Groceries category:

- COD recorded **173 purchase records**.
- Card recorded **159 purchase records**.

**Business Interpretation**

COD had a higher purchase record count than Card within this category.

This provides a specific example of how payment method distribution can differ across product categories.

Further analysis across the remaining categories would help provide a broader understanding of payment patterns.

### 5.5 Discount & Item Rating Analysis

**Situation & Objective**

Explore purchasing patterns across different discount levels and examine the distribution of item ratings.

**Analysis & Finding**

Discount values were grouped into analytical tiers, including separate classifications for unknown and potentially invalid values.

This approach allows purchase metrics to be compared across more consistent discount categories.

**Business Interpretation**

The classification provides a structured basis for examining how purchase value and item ratings vary across discount groups.

However, differences between discount tiers should not be interpreted as evidence that discounts directly influence purchasing behaviour or customer satisfaction.

### 5.6 Product-Level Purchase Analysis

**Situation & Objective**

Compare product-level purchasing activity to identify products with higher purchase volume or purchase value contributions.

**Analysis & Finding**

Footwear recorded the highest purchase volume, with **983 purchase records**.

**Business Interpretation**

This highlights Footwear as an important category in terms of purchase activity.

Comparing purchase volume with purchase value provides two complementary perspectives when reviewing product and category performance.

---

## 💡 6. Business Implications & Potential Actions

The findings provide several areas for further business investigation.

| Area | Potential Business Application |
|---|---|
| Category Performance | Review Electronics' contribution to purchase value when evaluating category-level inventory and product mix. |
| Purchase Volume | Examine Footwear's higher purchase volume when reviewing stock movement and replenishment requirements. |
| Customer Segmentation | Investigate differences in average purchase value across demographic segments and explore possible category preferences. |
| Payment Methods | Review payment method distributions across product categories to better understand purchasing preferences. |
| Discount Evaluation | Compare purchase metrics across discount tiers before assessing discount strategy effectiveness. |
| Product Performance | Monitor purchase volume and purchase value together to obtain a broader view of product-level performance. |

**Important:** These are potential areas for further investigation, not proven business outcomes. Actual operational decisions would require additional context such as inventory levels, product costs, transaction dates, and business objectives.

---

## ⚠️ 7. Project Limitations & Analytical Considerations

The analysis is limited by the attributes available in the dataset.

- **No Transaction ID:** Each row is treated as an individual purchase record. The analysis cannot independently verify unique transactions.
- **No Purchase Date:** Daily, monthly, quarterly, and year-over-year trends cannot be evaluated.
- **Season as a Category:** Season values are analysed as existing categories, not as evidence of changes over time.
- **No Product Cost Data:** Actual profit, gross margin, and profitability cannot be calculated.
- **Limited Customer Context:** Demographic comparisons do not establish customer motivations or causal relationships.
- **No Causal Inference:** Observed differences represent patterns in the available dataset and should not be interpreted as proof of cause and effect.

Documenting these limitations helps ensure that analytical conclusions remain within the scope of the available evidence.

---

## 📊 8. Power BI Dashboard & Visualization

An interactive Power BI dashboard was developed to complement the SQL analysis and provide a visual overview of purchasing performance, powered by the normalized Star Schema data model.

The dashboard brings together key metrics and purchasing breakdowns to make the results easier to explore and compare.

### Executive Summary – Dashboard Overview

![Store Sales Power BI Dashboard](reports/dashboard_overview.png)

### Key Visual Highlights

- **Overall Purchase Performance:** Displays total purchase value (**$1.43M**), purchase records (**5K**), and average purchase value (**$285.09**).
- **Category Performance:** Highlights Electronics as the largest category by purchase value, contributing approximately **$0.90M**.
- **Seasonal & Payment Distribution:** Compares purchase records and purchase values across the four available seasons and payment methods.
- **Customer Demographics:** Visualizes purchasing patterns across age groups and gender segments.
- **Discount & Rating Analysis:** Provides a visual comparison of discount tiers and item ratings.

The dashboard is intended to support exploratory analysis and complement the detailed SQL findings rather than replace the underlying analytical queries.

---

## 📁 9. Repository Structure

```text
store-sales-analysis/
│
├── reports/
│   └── dashboard_overview.png
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