USE northwind;


-- 1. VIEW AVAILABLE TABLES

SHOW TABLES;


-- 2. CHECK SAMPLE DATA

SELECT * FROM customers LIMIT 10;
SELECT * FROM orders LIMIT 10;
SELECT * FROM products LIMIT 10;
SELECT * FROM order_details LIMIT 10;


-- 3. DATA COMPLETENESS CHECKS


-- Customers with missing company name
SELECT *
FROM customers
WHERE company IS NULL OR company = '';

-- Customers with missing last name
SELECT *
FROM employees
WHERE last_name IS NULL OR last_name = '';

-- Orders with missing order date
SELECT *
FROM orders
WHERE order_date IS NULL;

-- Products with missing product name
SELECT *
FROM products
WHERE product_name IS NULL OR product_name = '';

-- Products with missing unit price
SELECT *
FROM products
WHERE list_price IS NULL;


-- 4. DUPLICATE CHECKS


-- Duplicate customer IDs
SELECT id, COUNT(*) AS duplicate_count
FROM customers
GROUP BY id
HAVING COUNT(*) > 1;

-- Duplicate product IDs
SELECT id, COUNT(*) AS duplicate_count
FROM products
GROUP BY id
HAVING COUNT(*) > 1;

-- Duplicate order IDs
SELECT id, COUNT(*) AS duplicate_count
FROM orders
GROUP BY id
HAVING COUNT(*) > 1;


-- 5. RELATIONSHIP / FOREIGN KEY CHECKS


-- Orders referencing customers that do not exist
SELECT o.*
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.id
WHERE c.id IS NULL;

-- Order details referencing orders that do not exist
SELECT od.*
FROM order_details od
LEFT JOIN orders o ON od.order_id = o.id
WHERE o.id IS NULL;

-- Order details referencing products that do not exist
SELECT od.*
FROM order_details od
LEFT JOIN products p ON od.product_id = p.id
WHERE p.id IS NULL;

-- Products referencing suppliers that do not exist
SELECT p.*
FROM products p
LEFT JOIN suppliers s ON p.supplier_ids = s.id
WHERE p.supplier_ids IS NOT NULL AND s.id IS NULL;



-- 6. BUSINESS LOGIC VALIDATION



-- Orders shipped before order date
SELECT *
FROM orders
WHERE shipped_date IS NOT NULL
  AND shipped_date < order_date;

-- Orders paid before order date
SELECT *
FROM orders
WHERE paid_date IS NOT NULL
  AND paid_date < order_date;

-- Products with negative price
SELECT *
FROM products
WHERE list_price < 0;

-- Products with negative target level
SELECT *
FROM products
WHERE target_level < 0;

-- Order details with zero or negative quantity
SELECT *
FROM order_details
WHERE quantity <= 0;

-- Order details with negative unit price
SELECT *
FROM order_details
WHERE unit_price < 0;

-- Order details with discount outside expected range
SELECT *
FROM order_details
WHERE discount < 0 OR discount > 1;



-- 7. AGGREGATE / SUMMARY VALIDATION



-- Total number of orders by customer
SELECT c.company, COUNT(o.id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.company
ORDER BY total_orders DESC;

-- Customers with no orders
SELECT c.*
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
WHERE o.id IS NULL;

-- Products never ordered
SELECT p.*
FROM products p
LEFT JOIN order_details od ON p.id = od.product_id
WHERE od.product_id IS NULL;

-- Number of products per supplier
SELECT s.company, COUNT(p.id) AS total_products
FROM suppliers s
LEFT JOIN products p ON s.id = p.supplier_ids
GROUP BY s.id, s.company
ORDER BY total_products DESC;



-- 8. REVENUE-STYLE VALIDATION



-- Total sales by product
SELECT p.product_name,
       SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM order_details od
JOIN products p ON od.product_id = p.id
GROUP BY p.id, p.product_name
ORDER BY total_sales DESC;

-- Total sales by customer
SELECT c.company,
       SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM customers c
JOIN orders o ON c.id = o.customer_id
JOIN order_details od ON o.id = od.order_id
GROUP BY c.id, c.company
ORDER BY total_sales DESC;



-- 9. DATE RANGE / OUTLIER CHECKS



-- Orders with very large shipping fee
SELECT *
FROM orders
WHERE shipping_fee > 100;

-- Orders with missing shipped date but marked shipped status
SELECT *
FROM orders
WHERE status_id IS NOT NULL
  AND shipped_date IS NULL;



-- 10. BASIC QA SUMMARY QUERIES

  

SELECT COUNT(*) AS total_customers FROM customers;
SELECT COUNT(*) AS total_orders FROM orders;
SELECT COUNT(*) AS total_products FROM products;
SELECT COUNT(*) AS total_order_details FROM order_details;
