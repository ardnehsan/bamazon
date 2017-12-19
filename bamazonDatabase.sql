CREATE database Bamazon;

USE Bamazon;

CREATE TABLE products (
	
    item_id INT auto_increment PRIMARY KEY,
    product_name VARCHAR(100),
    department_name VARCHAR(100),
    price INT NULL,
    stock_quantity INT NULL

);

SELECT * FROM Bamazon.products;
