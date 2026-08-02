-- ============================================
-- SAMPLE DATA
-- ============================================
USE my_sql;

-- ---------- PRODUCT ----------
INSERT INTO product (product_id, product_name, price, stock) VALUES
(101, 'laptop',    60000.00, 10),
(102, 'mobile',    20000.00, 25),
(103, 'headphone',  2000.00, 50),
(104, 'keyboard',   1500.00, 30);

-- ---------- CUSTOMERS ----------
INSERT INTO customers (customer_id, customer_name, email, city, phone) VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com', 'delhi',  9000000001),
(2, 'Priya Singh',  'priya@gmail.com', 'mumbai', 9000000002),
(3, 'Aman Verma',   'aman@gmail.com',  'delhi',  9000000003),
(4, 'Neha Gupta',   'neha@gmail.com',  'pune',   9000000004),
(5, 'Suman',        'suman@gmail.com', NULL,     9000000005);

-- ---------- ORDER ----------
INSERT INTO `order` (product_id, customer_id, quantity) VALUES
(101, 1, 1),
(102, 2, 2),
(103, 3, 3),
(104, 4, 4),
(101, 5, 2),
(102, 1, 1);
