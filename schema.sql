-- ============================================
-- SCHEMA: Product, Customer & Order Management
-- Database: my_sql
-- ============================================

CREATE DATABASE IF NOT EXISTS my_sql;
USE my_sql;

-- ---------- PRODUCT TABLE ----------
CREATE TABLE product (
    product_id   INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price        DECIMAL(10,2) NOT NULL,
    stock        INT DEFAULT 0,
    CONSTRAINT chk_price_positive CHECK (price > 0)
);

-- ---------- CUSTOMERS TABLE ----------
CREATE TABLE customers (
    customer_id   INT PRIMARY KEY,
    customer_name VARCHAR(40),
    email         VARCHAR(100),
    city          VARCHAR(40),
    phone         INT UNIQUE
);

-- ---------- ORDER TABLE ----------
-- `order` is a reserved keyword in MySQL, hence backticks are required
CREATE TABLE `order` (
    order_id    INT PRIMARY KEY AUTO_INCREMENT,
    product_id  INT NOT NULL,
    customer_id INT NOT NULL,
    quantity    INT NOT NULL,
    CONSTRAINT fk_product
        FOREIGN KEY (product_id) REFERENCES product(product_id),
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
