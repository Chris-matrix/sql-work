# E-Commerce Database Project

## Overview

This project implements a MySQL database for an e-commerce platform. It includes tables for customers, products, orders, and order details, along with sample data and queries for common operations.

## Database Schema

### Customers Table
Stores information about customers.
- `customer_id` (Primary Key)
- `first_name`
- `last_name`
- `email`
- `address`
- `phone`

### Products Table
Contains details about products available for sale.
- `product_id` (Primary Key)
- `name`
- `description`
- `price`
- `stock_quantity`

### Orders Table
Tracks customer orders.
- `order_id` (Primary Key)
- `customer_id` (Foreign Key to customers)
- `order_date`
- `total_amount`
- `status`

### Order Details Table
Links orders to specific products and quantities.
- `order_detail_id` (Primary Key)
- `order_id` (Foreign Key to orders)
- `product_id` (Foreign Key to products)
- `quantity`
- `unit_price`

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
   CREATE DATABASE ecommerce;
   USE ecommerce;
## Reflection questions 
   *How do primary and foreign keys help maintain data integrity?
   How the data is managed and stored
**What insights can be gained by joining multiple tables?
   How the data is realated or can be used
**How can aggregate functions summarize data?
   Pulling form 7 powerdul data pathways a once
What types of analyses are enabled by date functions?
   Anyzaing the data from 7 diffrent power data streams 
**How might you extend this database for additional e-commerce features?
Maybe do a survey to what features the customers would want to make shoping easier.
