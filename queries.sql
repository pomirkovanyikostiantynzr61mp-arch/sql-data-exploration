-- Аналіз продажів супермаркету 

-- 1. Загальний дохід по кожному місту
SELECT 
    city, 
    SUM(revenue) AS total_revenue
FROM supermarket_sales
GROUP BY city
ORDER BY total_revenue DESC;

-- 2. Який тип клієнтів має вищий середній чек?
SELECT 
    customer_type, 
    AVG(revenue) AS average_check
FROM supermarket_sales
GROUP BY customer_type;

-- 3. Топ-3 найпопулярніші категорії товарів за кількістю проданих одиниць
SELECT 
    product_line, 
    SUM(quantity) AS total_sold
FROM supermarket_sales
GROUP BY product_line
ORDER BY total_sold DESC
LIMIT 3;

-- 4. Порівняння загального доходу між різними філіями
SELECT 
    branch, 
    SUM(revenue) AS branch_revenue
FROM supermarket_sales
GROUP BY branch
ORDER BY branch_revenue DESC;
