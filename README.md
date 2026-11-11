# 🛒 Store Sales & Customer Behaviour Analysis

### SQL | Data Profiling | Data Quality Validation | Data Transformation | Star Schema Modeling | Business Analytics | Power BI

---

## 📌 1. Project Overview

This project explores retail purchasing patterns through SQL-based data analysis, a structured Star Schema data model, and an interactive Power BI visualization dashboard.

The objective was to transform raw retail data into a normalized analytical dataset using a Star Schema architecture, assess data quality, and investigate purchasing patterns across product categories, customer demographics, seasons, payment methods, and discount ranges.

Rather than focusing solely on data preparation, this project emphasizes translating analytical results into meaningful business observations and actionable operational insights.

**Project Workflow:**

`Raw Dataset → Data Profiling → Data Quality Validation → SQL Transformation → Power BI Star Schema Modeling → Business Analysis → Power BI Dashboard`

---

## 🎯 2. Business Objectives & Framework

The analysis was structured around core business questions derived from commercial retail analytics frameworks:

| Business Area | Key Business Question |
|---|---|
| Overall Purchase Performance | What are the total purchase value, total transactions, average purchase value, highest purchase, and lowest purchase? |
| Category & Product Performance | Which product categories and items contribute the most to purchase value and purchase volume? |
| Customer Demographics | How do purchasing patterns differ across age groups (via binning) and gender segments to guide market positioning? |
| Seasonal & Payment Analysis | How are purchase records and values distributed across seasons and payment methods (Card vs. Cash on Delivery)? |
| Discount & Rating Analysis | How do purchase metrics and item ratings vary across structured discount ranges/tiers? |

---

## 📊 3. Dataset Overview

The project utilizes a retail store sales dataset containing **5,000 purchase records** and **11 attributes**.

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

### Dataset Limitations & Considerations

- **No Transaction ID:** Each row is treated as an individual purchase record; unique multi-item transactions cannot be independently verified.
- **No Purchase Date:** Daily, monthly, quarterly, and Year-over-Year (YoY) time-series trends cannot be evaluated.
- **Season as a Category:** Season values are analyzed as static categorical groupings rather than chronological shifts over time.
- **No Product Cost Data:** Product costs and operating expenses are absent, meaning actual net profit margins and profitability cannot be calculated.
- **No Causal Inference:** Observed demographic differences represent statistical patterns in the available dataset rather than proven cause-and-effect motivations.

Documenting these limitations ensures analytical conclusions remain strictly bounded by available evidence.

---

## 🛠️ 4. SQL Workflow & Power BI Data Modeling

The project uses a modular SQL workflow combined with a clean Star Schema data model in Power BI to ensure high performance, maintainability, and accurate filtering relationships.

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

### 4.5 Business Analysis Scripts

Organized SQL analysis into separate scripts to improve readability, maintainability, and traceability.

| SQL File | Analytical Focus |
|---|---|
| `03_business_analysis_01_overall_metrics.sql` | Overall purchase metrics and executive KPIs |
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

### 5.1 Overall Purchase Performance

**Situation & Objective**

Establish an overall baseline to understand the scale and average value of purchasing activity within the dataset.

**Analysis & Finding**

SQL aggregation identified the following core metrics:

| Metric | Result |
|---|---:|
| Total Purchase Value | **$1.43M** |
| Purchase Records | **5,000** |
| Average Purchase Value | **$285.09** |

**Business Interpretation**

These metrics provide an executive baseline for comparing purchasing activity across product categories and customer segments.

### 5.2 Product Category Performance

**Situation & Objective**

Understand how purchase value is distributed across different product categories.

**Analysis & Finding**

Electronics recorded approximately **$0.90M** in purchase value, making it the dominant category by financial turnover.

**Business Interpretation**

Electronics represents a substantial contribution to total sales volume, highlighting its importance for category inventory management.

### 5.3 Customer Demographic Analysis

**Situation & Objective**

Explore whether purchasing patterns differ across customer age groups and gender segments.

**Analysis & Finding**

Within the 31–40 age group bracket:

| Gender | Purchase Records | Average Purchase Value |
|---|---:|---:|
| Male | 456 | **$520.75** |
| Female | 484 | **$110.23** |

**Business Interpretation**

The results reveal a notable variance in average purchase value between gender segments within this specific age bracket, serving as a baseline for targeted marketing strategy explorations.

### 5.4 Seasonal & Payment Method Analysis

**Situation & Objective**

Examine how purchasing activity is distributed across available seasons and payment methods.

**Analysis & Finding**

Within the Groceries category:
- COD recorded **173 purchase records**.
- Card recorded **159 purchase records**.

**Business Interpretation**

Demonstrates how payment channel preferences can vary across specific product categories, providing granular insights into customer checkout habits.

### 5.5 Discount & Item Rating Analysis

**Situation & Objective**

Explore purchasing patterns across different discount levels and examine the distribution of item ratings.

**Analysis & Finding**

Structuring discounts into analytical bands helps evaluate customer acquisition trends without distortion from raw, unbundled granularity.

**Business Interpretation**

Provides a clear structural foundation for reviewing how promotional ranges interact with purchase metrics.

---

## 💡 6. Business Implications & Potential Actions

The findings suggest several areas for further operational investigation:

| Area | Potential Business Application |
|---|---|
| Category Performance | Review Electronics' contribution to purchase value when evaluating category-level inventory and product mix. |
| Purchase Volume | Examine high-volume categories (such as Footwear) when reviewing stock movement and replenishment cycles. |
| Customer Segmentation | Investigate differences in average purchase value across demographic brackets to refine market positioning. |
| Payment Methods | Review payment channel distribution across categories to optimize checkout options. |
| Discount Evaluation | Monitor purchase metrics across discount bands to safeguard gross operational margins. |

**Important:** These are potential areas for strategic investigation, not proven outcomes. Operational decisions require additional context including inventory costs, transaction dates, and margin data.

---

## 📊 8. Power BI Dashboard & Visualization

An interactive Power BI executive dashboard was developed to complement the SQL analysis, powered by the normalized Star Schema data model and optimized visual grouping.

### Executive Summary – Dashboard Overview

![Store Sales Power BI Dashboard](reports/dashboard_overview.png)

### Key Visual Highlights

- **Executive KPI Cards:** Top-row metric summary cards displaying Total Sales (**$1.43M**), Total Transactions (**5K**), Average Purchase (**$285.09**), Highest Purchase (**$3.00K**), and Lowest Purchase (**$5.08**).
- **Sales by Season:** Donut chart evaluating transaction volume and value distribution across Spring, Winter, Summer, and Autumn.
- **Sales by Discount Range:** Clustered bar chart providing a structured view of purchase values across discount percentages.
- **Sales by Payment Method:** Comparative column chart highlighting digital/Card preference versus Cash on Delivery.
- **Sales by Age Group:** Clean column chart utilizing **10-year interval binning (`age (bins)`)** to categorize customer demographics and isolate core target brackets without visual crowding.

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