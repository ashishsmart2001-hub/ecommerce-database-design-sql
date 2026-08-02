-- ============================================
-- ANALYSIS QUERIES
-- ============================================
USE my_sql;

-- 1. Update a customer's city
UPDATE customers
SET city = 'jaipur'
WHERE customer_id = 1;

-- 2. Increase price by 10% for products priced above 20000
UPDATE product
SET price = price * 1.10
WHERE price > 20000;

-- 3. Customers living in Delhi
SELECT * FROM customers
WHERE city = 'delhi';

-- 4. Products priced below 5000
SELECT * FROM product
WHERE price < 5000;

-- 5. Orders with quantity greater than 2
SELECT * FROM `order`
WHERE quantity > 2;

-- 6. Products sorted by price (highest to lowest)
SELECT * FROM product
ORDER BY price DESC;

-- 7. Customers sorted alphabetically by name
SELECT * FROM customers
ORDER BY customer_name ASC;

-- 8. Total customers grouped by city
SELECT city, COUNT(customer_id) AS total_customers
FROM customers
GROUP BY city;

-- 9. Total quantity sold per product
SELECT product_id, SUM(quantity) AS total_sold
FROM `order`
GROUP BY product_id;

-- 10. Total orders placed per customer
SELECT customer_id, COUNT(order_id) AS total_orders
FROM `order`
GROUP BY customer_id;

-- 11. Products with total sales greater than 2 units (HAVING clause)
SELECT product_id, SUM(quantity) AS total_sales
FROM `order`
GROUP BY product_id
HAVING SUM(quantity) > 2;
