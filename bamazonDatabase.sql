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

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Ryzen 3 1200","CPU", 100, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Ryzen 5 1600","CPU", 180, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("LG Blu-Ray Burner","Driver", 58products, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("MSI - B350","MOBO", 85, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Crucial 8GB DDR4 2400","RAM", 90, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Asus RX 580 8GB","GPU", 240, 3);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("SanDisk 120GB","SSD", 60, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Western Digital 1 TB","HDD", 40, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("EVGA Bronze ATX ","PSU", 50, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Cooler Master Masterbox","Case", 120, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Windows 10 Pro","Operating System", 100, 10);



