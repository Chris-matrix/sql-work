CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,  -- Unique customer ID
    FirstName VARCHAR(50),       -- First name
    LastName VARCHAR(50),        -- Last name
    Email VARCHAR(100),          -- Email address
    Address VARCHAR(255),        -- Physical address
    Phone VARCHAR(20)            -- Phone number
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,   -- Unique product ID
    Name VARCHAR(100),           -- Product name
    Description TEXT,            -- Product description
    Price DECIMAL(10, 2),        -- Product price
    StockQuantity INT            -- Available stock
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,     -- Unique order ID
    CustomerID INT,              -- Customer who placed order
    OrderDate DATETIME,          -- Date of order
    TotalAmount DECIMAL(10, 2),  -- Total order amount
    Status VARCHAR(20),          -- Order status
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,  -- Unique order detail ID
    OrderID INT,                    -- Associated order
    ProductID INT,                  -- Product in this detail
    Quantity INT,                   -- Quantity ordered
    UnitPrice DECIMAL(10, 2),       -- Price per unit
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);