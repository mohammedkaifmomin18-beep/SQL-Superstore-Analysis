# 🛒 SQL Superstore Analysis
### End-to-End Data Analytics Project
---

## 📌 Problem Statement

E-commerce businesses need to understand sales performance, customer behavior, and regional trends to make better decisions.
This project uses SQL to analyze a retail dataset and generate actionable business insights.

---

## 🎯 Objectives

* Analyze overall sales and profit performance
* Identify top customers and products
* Understand regional and category trends
* Perform time-based sales analysis
* Segment customers based on spending

---

## 🗂 Dataset

* Superstore dataset (21 columns)
* Contains order, customer, product, and sales information

---

## 🗄️ Table Schema

```sql
CREATE TABLE superstore (
    row_id INT,
    order_id TEXT,
    order_date TEXT,
    ship_date TEXT,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales FLOAT,
    quantity INT,
    discount FLOAT,
    profit FLOAT
);
```




---

## ⚙️ How to Run

1. Download the dataset
2. Import data into PostgreSQL (pgAdmin)
3. Create table using the schema above
4. Run queries from `sql/queries.sql`
5. Analyze results for insights
👉 SQL Queries: [View Queries](sql/queries.sql)
👉 Dataset: [Download/View](data/superstore.csv)
---

## 🧠 Key SQL Concepts Used

* Aggregations (SUM, COUNT)
* GROUP BY & ORDER BY
* CASE WHEN (segmentation)
* Window Functions (RANK, running total)
* Date Functions (TO_DATE, DATE_TRUNC)

---

## 📊 Key Insights

* Technology category contributes the highest share of total sales
* West region generates the highest profit
* A small group of customers contributes a large portion of revenue
* Sales show consistent monthly growth trends

---

## 💡 Business Recommendations

* Focus on high-performing categories like Technology
* Improve strategies in low-performing regions
* Target high-value customers for retention
* Optimize product-level pricing and discounting

---

## 📂 Project Structure

```
SQL-Superstore-Analysis/
│
├── data/          → Raw dataset
├── sql/           → SQL queries
├── docs/          → Business insights
├── visuals/       → Charts
└── README.md
```

---

## ⚠️ Limitations

* Dataset is static and not real-time
* No data normalization applied
* Limited external business context

---

## 🚀 Future Improvements

* Build dashboard using Power BI
* Perform predictive analysis
* Automate reporting pipeline

---

## 👤 Author

**Mohammed Kaif Momin**
Aspiring Data Analyst

