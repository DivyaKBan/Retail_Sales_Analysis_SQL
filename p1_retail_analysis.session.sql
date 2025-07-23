CREATE TABLE retail_sales(
    transactions_id	INT PRIMARY KEY,
    sale_date	DATE,
    sale_time	TIME,
    customer_id	INT,
    gender	VARCHAR(15),
    age	INT,
    category	VARCHAR(11),
    quantiy	INT,
    price_per_unit	FLOAT,
    cogs	FLOAT,
    total_sale   FLOAT

)
COPY retail_sales 
FROM 'D:\DATA Analysis\SQL\Retail-Sales-Analysis-SQL-Project--P1-main/SQL - Retail Sales Analysis_utf .csv'
DELIMITER ','
CSV HEADER;


--CLEANING NULL VALUES FROM THE TABLE

SELECT * 
FROM retail_sales
WHERE
    transactions_id	IS NULL OR
    sale_date	IS NULL OR
    sale_time	IS NULL OR
    customer_id	IS NULL OR
    gender	IS NULL OR
    category   IS NULL OR
    quantiy IS NULL OR
    price_per_unit IS NULL OR	
    cogs IS NULL OR	
    total_sale IS NULL ;

DELETE FROM retail_sales
WHERE
    transactions_id	IS NULL OR
    sale_date	IS NULL OR
    sale_time	IS NULL OR
    customer_id	IS NULL OR
    gender	IS NULL OR
    category   IS NULL OR
    quantiy IS NULL OR
    price_per_unit IS NULL OR	
    cogs IS NULL OR	
    total_sale IS NULL ;

    --EXPLORATION
--Number of sales

SELECT COUNT(*) AS total_sales
FROM retail_sales;

--Number unique of customers

SELECT COUNT(DISTINCT customer_id) AS total_sales
FROM retail_sales;

--How many categories are there?

SELECT 
    COUNT(DISTINCT category) AS total_categories,
    category
FROM retail_sales
GROUP BY category;

--Data Analysis & Business key problems

--Q1. Write a SQL query to retrieve all columns for sales made on '2022-11-05'.
SELECT *
FROM retail_sales
WHERE sale_date='2022-11-05';

--Q2. Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in November 2022.
SELECT *
FROM retail_sales
WHERE 
    category = 'Clothing' AND
    TO_CHAR (sale_date,'YYYY-MM' ) = '2022-11' AND
    quantiy >=4


--Q3. Write a SQL query to calculate the total sales (total_sale) for each category.

SELECT 
    category,
    SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY category;


--Q4. Write a SQL query to retrieve all items from the 'Beauty' category.

SELECT *
FROM retail_sales
WHERE category='Beauty';

--Q5. Write a SQL query to find the average age of customers who purchased items.

SELECT
    AVG(age) AS Aerage_age
FROM retail_sales
WHERE age IS NOT NULL;

--Q6. Write a SQL query to find all transactions where the total_sale is greater than 1000.

SELECT *
FROM retail_sales
WHERE total_sale > 1000;

--Q7. Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

SELECT  
    gender,
    SUM(transactions_id) AS total_transactions
FROM 
    retail_sales
GROUP BY        
    gender

--Q8. Write a SQL query to calculate the average sale for each month and find out the best-selling month in each year.

SELECT
    TO_CHAR(sale_date,'MM') AS Month,
    ROUND(AVG(total_sale)) AS Average_sale
FROM
    retail_sales
GROUP BY
    Month
ORdER BY
    Month

--Q9. Write a SQL query to find the top 5 customers based on the highest total sales.

SELECT
    customer_id,
    SUM(total_sale) AS Total_sales
FROM
    retail_sales
Group BY
    customer_id
ORDER BY
    Total_sales DESC
LIMIT 5;

--Q10. Write a SQL query to create shifts and count the number of orders in each shift. (Example: Morning < 12, Afternoon 12-17, Evening > 17)
SELECT
    CASE
        WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sale_time) >= 12 AND EXTRACT(HOUR FROM sale_time)<17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shifts,
    COUNT(*) AS total_orders
FROM
    retail_sales
GROUP BY
    shifts
ORDER BY
    total_orders DESC;