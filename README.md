# E-Commerce Database Project

## Overview

This project implements a MySQL database for an e-commerce platform. It includes tables for customers, products, orders, and order details, along with sample data and queries for common operations.

## Database Schema

### Customers Table
Stores information about customers.
- **customer_id** (Primary Key)
- **first_name**
- **last_name**
- **email**
- **address**
- **phone**

### Products Table
Contains details about products available for sale.
- **product_id** (Primary Key)
- **name**
- **description**
- **price**
- **stock_quantity**

### Orders Table
Tracks customer orders.
- **order_id** (Primary Key)
- **customer_id** (Foreign Key to customers)
- **order_date**
- **total_amount**
- **status**

### Order Details Table
Links orders to specific products and quantities.
- **order_detail_id** (Primary Key)
- **order_id** (Foreign Key to orders)
- **product_id** (Foreign Key to products)
- **quantity**
- **unit_price**

## Sample Data

The project includes sample data for all tables to demonstrate functionality:
- 2 customers
- 5 products
- 4 orders
- 5 order details

## Queries

The following queries are included:
1. Join orders and customers for order details with customer info
2. Join order items, orders, and products for order line items
3. Aggregate total revenue per customer
4. Calculate total revenue across all orders
5. Calculate average order value
6. Count number of orders per customer

## Setup Instructions

1. Create the database:
   ```sql
## Reflection Questions

### 1. How do primary and foreign keys help maintain data integrity?
Primary and foreign keys are fundamental components in relational databases that ensure data integrity. A primary key uniquely identifies each record in a table, preventing duplicate entries. Foreign keys establish relationships between tables, ensuring that any associated records across those tables are valid and exist. This helps maintain referential integrity by preventing orphaned records and ensuring that data remains consistent and reliable.

### 2. What insights can be gained by joining multiple tables?
Joining multiple tables allows for comprehensive data analysis by combining related information from different entities within the database. For example, by joining the customers, orders, and products tables, we can obtain insights into customer purchasing behavior, order history, and the performance of different products. This interconnected data can inform business strategies, marketing initiatives, and inventory management decisions.

### 3. How can aggregate functions summarize data?
Aggregate functions, such as SUM, AVG, COUNT, and others, enable the summarization of data across specified groups. They help condense large datasets into meaningful summaries, such as total revenue generated over a period, average order values, or the total number of orders per customer. This summarization aids in quick assessments and reporting for informed decision-making.

### 4. What types of analyses are enabled by date functions?
Date functions enable various time-based analyses, allowing users to examine trends and patterns over different time periods. For instance, they can be used to analyze sales growth quarter-over-quarter, identify seasonal purchasing trends, or monitor customer engagement over time. These analyses provide valuable insights into business performance and can guide strategies for future growth.

### 5. How might you extend this database for additional e-commerce features?
To better cater to customer needs and enhance their shopping experience, additional features can be integrated into the database based on customer feedback. Conducting surveys to gather insights on desired features—such as wish lists, product reviews, personalized recommendations, or improved shipping options—can inform further database expansion and improve user satisfaction.

