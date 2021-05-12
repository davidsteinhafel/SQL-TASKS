SHOW databases;
CREATE DATABASE taskComplete;
CREATE TABLE customers (
customer_id int NOT NULL auto_increment,
name  varchar(100) NOT NULL,
age int(11) NOT NULL,
primary key (customer_id)
);
CREATE TABLE products (
product_id int NOT NULL AUTO_increment,
name varchar(100) not null,
primary key (product_id)
);

CREATE TABLE orders (
order_id int NOT NULL AUTO_INCREMENT,
fk_customer_id int NOT NULL,
fk_product_id int NOT NULL,
PRIMARY KEY (order_id),
FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (fk_product_id) REFERENCES products(product_id)
);