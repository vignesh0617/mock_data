drop schema if exists mock_data;
create schema mock_data;
use mock_data;


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(100),
    date_of_birth DATE,
    created_at DATETIME,
    updated_at DATETIME
);
 
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    created_at DATETIME
);
 
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
 
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(100),
    department VARCHAR(50),
    hire_date DATE,
    salary INT
);
 
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(50),
    transaction_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
