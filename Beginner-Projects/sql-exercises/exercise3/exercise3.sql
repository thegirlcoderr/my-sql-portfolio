-- 1. Create the sales table
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price NUMERIC(10,2)
);

-- 2. Insert sample data
INSERT INTO sales (product, category, quantity, price) VALUES
('Apple', 'Fruit', 10, 0.50),
('Orange', 'Fruit', 5, 0.60),
('Milk', 'Dairy', 2, 1.20),
('Cheese', 'Dairy', 1, 2.50),
('Bread', 'Bakery', 3, 1.00),
('Butter', 'Dairy', 1, 1.80),
('Banana', 'Fruit', 8, 0.40),
('Cake', 'Bakery', 2, 2.00);

-- 3. Total quantity sold
SELECT SUM(quantity) AS total_quantity_sold FROM sales;

-- 4. Number of items sold per category
SELECT category, COUNT(*) AS items_sold FROM sales
GROUP BY category;

-- 5. Average price per category
SELECT category, AVG(price) AS avg_price FROM sales
GROUP BY category;

-- 6. Total revenue per category
SELECT category, SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY category;
