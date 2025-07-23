# 🛒 Retail Sales Analysis – SQL Project

This project demonstrates a complete SQL workflow for cleaning, exploring, and analyzing a retail sales dataset. It focuses on solving real-world business questions using SQL queries.

---

## 📂 Project Overview

This project covers:

✅ **Data Cleaning:**  
- Import CSV data into a SQL table.  
- Remove rows with NULL values for accurate analysis.  

✅ **Exploratory Data Analysis (EDA):**  
- Find total sales, unique customers, and number of product categories.  

✅ **Business Problem Solving:**  
10 practical SQL queries addressing key business questions such as:
- Top customers
- Best-selling months
- Sales trends across different time shifts

---

## 🗄 Database Design

The `retail_sales` table contains the following columns:

| Column            | Data Type    | Description                          |
|--------------------|--------------|--------------------------------------|
| `transactions_id`  | INT          | Unique transaction identifier        |
| `sale_date`        | DATE         | Date of sale                         |
| `sale_time`        | TIME         | Time of sale                         |
| `customer_id`      | INT          | Unique customer ID                   |
| `gender`           | VARCHAR(15)  | Gender of the customer               |
| `age`              | INT          | Age of the customer                  |
| `category`         | VARCHAR(11)  | Product category                     |
| `quantiy`          | INT          | Quantity sold                        |
| `price_per_unit`   | FLOAT        | Price per item                       |
| `cogs`             | FLOAT        | Cost of goods sold                   |
| `total_sale`       | FLOAT        | Total transaction value              |

---

## 🧹 Data Cleaning Steps

1. Imported the dataset using `COPY`.
2. Checked for NULL values in critical columns.
3. Removed records with NULLs for clean analysis.

---

## 📊 Key Analyses

### 🔥 Sample Queries:
- **Q1:** Retrieve all columns for sales made on `'2022-11-05'`.
- **Q2:** Find Clothing transactions where quantity > 10 in Nov 2022.
- **Q3:** Total sales per category.
- **Q4:** Retrieve all items from the 'Beauty' category.
- **Q5:** Average age of customers who made purchases.
- **Q6:** Transactions where `total_sale` > 1000.
- **Q7:** Total number of transactions by gender and category.
- **Q8:** Average sale per month and best-selling month of each year.
- **Q9:** Top 5 customers based on total sales.
- **Q10:** Number of orders in Morning, Afternoon, Evening shifts.

---

## 🚀 Tools & Technologies

- **SQL** (PostgreSQL/MySQL compatible)
- **Dataset:** Retail sales CSV file
- **Environment:** VS Code + pgAdmin / MySQL Workbench

---

## 📈 Outcomes

This project helps to answer:
- Which product categories generate the highest revenue?
- Who are the top customers?
- What times of day see the most sales activity?

It serves as a solid **portfolio project for Data Analyst aspirants**, demonstrating practical SQL skills.

---

## 📁 Folder Structure

