# 🛒 SQL Superstore Analysis | Data Analytics Project

---

## 📌 Problem Statement
Analyze e-commerce sales data to uncover insights related to customer behavior, product performance, and regional trends.

---

## 🎯 Objectives
- Analyze sales and profit performance  
- Identify top customers and products  
- Understand regional trends  
- Perform time-based analysis  
- Segment customers  

---

## 🗂 Dataset
- Superstore dataset (21 columns)  
- Includes orders, customers, and product data  

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

---

## 🧠 Key SQL Concepts Used
- Aggregations (SUM, COUNT)
- GROUP BY
- ORDER BY
- CASE WHEN
- Window Functions (RANK, Running Total)
- Date Functions (TO_DATE, DATE_TRUNC)

---

## 🔄 Project Workflow

1. Data Import into PostgreSQL  
2. Data Exploration  
3. Business Analysis using SQL  
4. Advanced Querying (Window Functions)  
5. Insight Generation

---

## ⚙️ How to Run

1. Import dataset into PostgreSQL
2. Create table using SQL schema
3. Run queries from `sql/queries.sql`
4. Analyze outputs for insights

---
## 📊 Key Insights

- Technology category generates highest sales
- Certain regions contribute more profit
- Top customers contribute significantly to revenue
- Sales show seasonal trends

---

## 📊 Visual Insights

![Sales](visuals/sales.png)
![Profit](visuals/profit.png)

---
## 💡 Business Recommendations

- Focus on high-performing categories
- Improve strategies in low-profit regions
- Target high-value customers
- Optimize product-level performance

---

## ⚠️ Limitations
- Dataset is static and not real-time  
- No data normalization applied  

---

## 🛠 Tools Used
- PostgreSQL
- SQL
- pgAdmin

---

## 📂 Project Structure
SQL-Superstore-Analysis/
│
├── data/
├── sql/
├── docs/
├── visuals/
└── README.md

---

## 👤 Author
Mohammed Kaif Momin
