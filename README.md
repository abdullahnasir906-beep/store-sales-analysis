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

The SQL analysis identified specific patterns across overall performance, product categories, demographics, payment channels, and discount tiers. Each finding follows a structured evaluation framework: Business Question, SQL Finding, Business Interpretation, and Potential Business Action.

### 5.1 Overall Purchase Performance

- **Business Question:** What are the total purchase value, total transactions, and average purchase value within the dataset?
- **SQL Finding:** Aggregation across the 5,000 records yielded a total purchase value of **$1.43M**, an average purchase value (AOV) of **$285.09**, and individual purchases ranging from a minimum of **$5.08** to a maximum of **$3.00K**.
- **Business Interpretation:** The wide dispersion between minimum and maximum transaction values indicates diverse purchasing behavior, establishing a reliable macro baseline for customer segmentation.
- **Potential Business Action:** Investigate the transaction characteristics of high-value purchases near the $3.00K threshold to determine if specific product bundles or categories drive high-ticket conversions.

### 5.2 Product Category Performance

- **Business Question:** Which product categories contribute the most to total purchase value?
- **SQL Finding:** Electronics recorded approximately **$0.90M** in purchase value, establishing it as the dominant category by financial turnover within the dataset.
- **Business Interpretation:** Electronics represents a major share of overall recorded sales, making it the primary driver of top-line value among all available product categories.
- **Potential Business Action:** Prioritize product-level demand analysis and category mix reviews for Electronics to understand SKU-level contribution, keeping in mind that inventory levels and COGS data are required before making supply chain adjustments.

### 5.3 Customer Demographic Analysis

- **Business Question:** How do purchasing patterns differ across customer age groups and gender segments?
- **SQL Finding:** Within the 31–40 age group bracket, male customers recorded 456 purchases with an average purchase value of **$520.75**, whereas female customers recorded 484 purchases with an average purchase value of **$110.23**.
- **Business Interpretation:** While transaction counts are relatively balanced between genders in this bracket, the average purchase value exhibits a notable variance, pointing to differing spending scale within the same demographic group.
- **Potential Business Action:** Explore product category distribution within this specific age bracket to examine whether the variance stems from high-ticket item preferences in specific sub-segments, avoiding causal assumptions about gender motivation.

### 5.4 Seasonal & Payment Method Analysis

- **Business Question:** How is purchasing activity distributed across payment methods within specific product categories?
- **SQL Finding:** Within the Groceries category, Cash on Delivery (COD) recorded **173 purchase records**, slightly outpacing Card transactions, which recorded **159 purchase records**.
- **Business Interpretation:** Payment method preferences can vary by category context, showing that essential consumer goods maintain distinct transaction channel distributions within specific product lines.
- **Potential Business Action:** Audit payment channel adoption across all remaining categories to map out where checkout preference exists, informing future payment gateway optimization without overgeneralizing preferences to the entire dataset.

### 5.5 Discount Tier & Item Rating Analysis

- **Business Question:** How do purchase metrics and item ratings vary across structured discount tiers?
- **SQL Finding:** Grouping discount percentages into analytical bands revealed that the lower discount tiers captured the highest volume of purchase records (approx. 2,100 records in lower brackets), while maintaining a relatively stable average item rating of around 3.7 to 3.8 across tiers.
- **Business Interpretation:** Transaction volume concentrates heavily in baseline or lower discount brackets, indicating that frequent purchasing occurs without requiring deep promotional discounting, and item satisfaction ratings remain consistent regardless of discount depth.
- **Potential Business Action:** Review transaction counts and average order values across deeper discount tiers to evaluate whether high promotional cuts drive proportional volume gains, keeping in mind that assessing true profit impact requires product cost and margin data.

---

## 💡 6. Actionable Business Recommendations & Investigation Areas

Based on the SQL findings and analytical limitations, the following areas are recommended for further business investigation:

| Analytical Area | Focus of Investigation | Analytical Reasoning & Safeguard |
|---|---|---|
| **Category-Level Review** | Examine SKU-level demand inside Electronics. | Focus on top-line revenue contributors while acknowledging the absence of inventory cost data. |
| **Demographic Behavioral Slices** | Cross-reference age and gender brackets with product categories. | Investigate basket-size variance without assuming direct causal motivations. |
| **Channel Optimization** | Audit payment method distributions across all categories. | Align checkout options with category-specific customer payment habits. |
| **Promotional Band Analysis** | Evaluate transaction volume across structured discount tiers. | Monitor discount distribution patterns without overclaiming direct profit impact. |

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