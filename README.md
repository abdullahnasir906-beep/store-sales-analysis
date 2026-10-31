# 🛒 Store Sales & Profitability Optimization

[![SQL](https://img.shields.io/badge/Language-SQL-blue.svg)](https://github.com/abdullahnasir906-beep/store-sales-analysis)
[![Data Modeling](https://img.shields.io/badge/Architecture-Star%20Schema-green.svg)](https://github.com/abdullahnasir906-beep/store-sales-analysis)
[![Analytics](https://img.shields.io/badge/Focus-Business%20Impact-orange.svg)](https://github.com/abdullahnasir906-beep/store-sales-analysis)

---

## 📌 1. Executive Summary & Business Context

* **The Scenario:** Despite achieving a steady upward trajectory in gross top-line revenue over the previous fiscal year, executive leadership flagged a critical anomaly: a sharp, unexplained erosion of net profit margins.
* **The Pain Point:** Management required a rigorous, data-driven root-cause diagnosis to isolate profit-draining product lines, discount leakage, and operational inefficiencies without stifling top-line revenue growth.

---

## 🎯 2. Strategic Core Business Objectives

The analysis is engineered to answer three high-stakes board-level questions:

1. **Profit-Revenue Disparity:** Which product categories drive top-line volume versus those that actually protect or expand the bottom line?
2. **Discount Leakage Analysis:** To what extent are aggressive promotional discounting strategies cannibalizing overall net profit margins?
3. **Geographic & Customer Segment Optimization:** Where are the high-value customer concentrations that yield maximum customer lifetime value (LTV) versus high-cost, low-yield regions?

---

## 🛠️ 3. Production-Grade Modular SQL Architecture

Adhering to software engineering best practices, the database environment avoids messy, monolithic scripts. The logic is decoupled into a clean, maintainable, production-ready pipeline inside the `/sql/` directory:

| File Name | Description & Purpose |
| :--- | :--- |
| `sql/01_schema_setup.sql` | Establishes the enterprise-grade **Star Schema** relational model, defining strict primary/foreign key constraints and indexing for high-performance querying. |
| `sql/02_data_cleaning_staging.sql` | Executes automated ETL data hygiene—handling null values, timestamp standardization, and duplicate suppression. |
| `sql/03_business_kpis.sql` | Implements core financial metric calculations (Net Revenue, Gross Margin, Average Order Value, and Discount Variance). |
| `sql/04_advanced_analysis.sql` | Leverages advanced SQL constructs (Common Table Expressions, Window Functions, and `RANK() OVER (PARTITION BY)`) for deep-dive margin degradation and cohort profitability modeling. |

---

## 📊 4. Key Strategic Findings & Data-Driven Recommendations

*(Visualizations synthesized via modular SQL pipelines and rendered in interactive dashboards)*

* 🚨 **Finding 1 (The Revenue Illusion):** *Electronics* dominate gross revenue generation, yet aggressive logistic overheads and heavy promotional discounting render them low-margin items.  
  👉 **Strategic Recommendation:** Restructure discount caps on high-volume electronics to protect net margins.

* 💡 **Finding 2 (The Hidden Margin Drivers):** *Home Appliances* record lower aggregate sales volume but deliver the highest net profit margin due to stable pricing discipline and minimal discount interference.  
  👉 **Strategic Recommendation:** Reallocate marketing acquisition capital toward the Home Appliances category to maximize bottom-line returns.

---

## 🔗 Live Interactive Dashboards & Documentation

* 🌐 **Executive Portfolio Page (Notion):** [Explore Interactive Case Study & Insights](#) *(Add your Notion URL here)*
* 📂 **Full Source Code & Queries (GitHub):** Browse the `/sql/` directory above for technical validation.

---

### 📩 Contact & Professional Connect
* **Author:** Abdullah Nasir
* **GitHub:** [@abdullahnasir906-beep](https://github.com/abdullahnasir906-beep)
