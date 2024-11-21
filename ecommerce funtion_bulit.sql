-- Create the e-commerce database
CREATE DATABASE ecommerce;
USE ecommerce;  -- Switch to the newly created database

-- Customers table
-- This table stores customer information
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each customer
    first_name VARCHAR(50),                      -- Customer's first name
    last_name VARCHAR(50),                       -- Customer's last name
    email VARCHAR(100),                          -- Customer's email address
    address VARCHAR(200),                        -- Customer's physical address
    phone VARCHAR(20)                            -- Customer's phone number
);

-- Products table
-- This table contains product details available for sale
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique identifier for each product
    name VARCHAR(100),                           -- Name of the product
    description TEXT,                            -- Detailed description of the product
    price DECIMAL(10, 2),                        -- Price of the product (with two decimal places)
    stock_quantity INT                           -- Quantity of the product in stock
);

-- Orders table
-- This table tracks customer orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,     -- Unique identifier for each order
    customer_id INT,                             -- Foreign key referencing the customer who placed the order
    order_date DATETIME,                         -- Date and time when the order was placed
    total_amount DECIMAL(10, 2),                -- Total amount for the order
    status VARCHAR(20),                          -- Current status of the order (e.g., 'Shipped', 'Pending')
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)  -- Establish relationship with customers table
);

-- Order details table
-- This table links orders to specific products and their quantities
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each order detail entry
    order_id INT,                                    -- Foreign key referencing the associated order
    product_id INT,                                  -- Foreign key referencing the ordered product
    quantity INT,                                    -- Quantity of the product ordered
    unit_price DECIMAL(10, 2),                       -- Price per unit at the time of order
    FOREIGN KEY (order_id) REFERENCES orders(order_id),  -- Establish relationship with orders table
    FOREIGN KEY (product_id) REFERENCES products(product_id)  -- Establish relationship with products table
);

-- Insert sample data into customers table
INSERT INTO customers (first_name, last_name, email, address, phone) VALUES
('Eric', 'James jr', 'ladiesman217@google.com', '123 Main St', '555-1234'),  -- Sample customer Eric James jr.
('Nia', 'Smith', 'Nia@google.com', '456 Elm St', '555-5678');                -- Sample customer Nia Smith

-- Note: The following updates are redundant since we already inserted Eric and Nia with their desired names.
-- If you want to keep them as they are in the insert statement, you can skip these updates.

-- Update customer names (if needed)
UPDATE customers
SET first_name = 'Eric', last_name = 'Johnson'
WHERE customer_id = 1;  -- Update first customer to Eric Johnson

UPDATE customers
SET first_name = 'Nia', last_name = 'Smith'
WHERE customer_id = 2;  -- Update second customer to Nia Smith

-- Insert sample data into products table
INSERT INTO products (name, description, price, stock_quantity) VALUES
('Laptop', 'High-performance laptop', 999.99, 10),   -- Sample product: Laptop with price and stock quantity
('Smartphone', 'Latest model smartphone', 599.99, 20);   -- Sample product: Smartphone with price and stock quantity

-- Insert sample data into orders table
INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
(1, '2024-11-20 10:00:00', 999.99, 'Shipped'),   -- Order by Eric for a laptop 
(2, '2024-11-21 11:00:00', 599.99, 'Pending');   -- Order by Nia for a smartphone

-- Insert sample data into order_details table 
INSERT INTO order_details (order_id, product_id, quantity, unit_price) VALUES 
(1, 1, 1, 999.99),   -- Order detail for Laptop in Order ID 1 
(2, 2, 1, 599.99);   -- Order detail for Smartphone in Order ID 2 