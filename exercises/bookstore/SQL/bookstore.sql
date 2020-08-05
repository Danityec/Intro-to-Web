DROP DATABASE IF EXISTS bookstore_DB;
CREATE DATABASE IF NOT EXISTS bookstore_DB;

-- DROP TABLE IF EXISTS stock;
USE bookstore_DB;

CREATE TABLE books(
book_id int unsigned NOT NULL AUTO_INCREMENT,
title varchar(50) NOT NULL,
PRIMARY KEY (book_id)
);

CREATE TABLE author(
author_id int unsigned NOT NULL AUTO_INCREMENT,
forename varchar(50) NOT NULL,
surname varchar(50) NOT NULL,
PRIMARY KEY (author_id)
);

CREATE TABLE books_author(
book_id int unsigned NOT NULL,
author_id int unsigned NOT NULL,
FOREIGN KEY (book_id) REFERENCES books (book_id),
FOREIGN KEY (author_id) REFERENCES author (author_id),
PRIMARY KEY (author_id,book_id)
);

CREATE TABLE book_prices(
book_condition  ENUM('mint', 'as-new', 'good', 'fair', 'poor'),
retail_price tinyint NOT NULL,
purchase_price tinyint NOT NULL,
PRIMARY KEY (book_condition)
);

CREATE TABLE publication(
 publication_id int unsigned NOT NULL,
 book_id int unsigned NOT NULL,
 translator varchar(200) ,
 publication_name varchar(50) NOT NULL,
 publication_year year,
 weight float NOT NULL,
 no_of_pages int unsigned NOT NULL,
PRIMARY KEY (publication_id),
FOREIGN KEY (book_id) REFERENCES books (book_id)
);

CREATE TABLE stock(
store_book_id int unsigned NOT NULL AUTO_INCREMENT,
book_condition  ENUM('mint', 'as-new', 'good', 'fair', 'poor'),
book_id int unsigned NOT NULL ,
location ENUM('store', 'storage', 'sold'), 
publication_id int unsigned NOT NULL,
storage_exit date,
PRIMARY KEY (store_book_id),
FOREIGN KEY (book_id) REFERENCES books (book_id),
FOREIGN KEY (book_condition) REFERENCES book_prices (book_condition),
FOREIGN KEY (publication_id) REFERENCES publication (publication_id)
);

CREATE TABLE person(
 person_id int unsigned NOT NULL AUTO_INCREMENT,
 address varchar(60) NOT NULL,
 forename varchar(50) NOT NULL,
 surname varchar(50) NOT NULL,
 PRIMARY KEY (person_id)
);

CREATE TABLE phone_number(
 phone_id int unsigned NOT NULL AUTO_INCREMENT,
 phone_no varchar(60) NOT NULL,
 PRIMARY KEY (phone_id)
);

CREATE TABLE person_phone_number(
 phone_id int unsigned NOT NULL,
 person_id int unsigned NOT NULL,
 FOREIGN KEY (phone_id) REFERENCES phone_number (phone_id),
 FOREIGN KEY (person_id) REFERENCES person (person_id),
 PRIMARY KEY (phone_id, person_id)
);

CREATE TABLE employee(
 employee_id int unsigned NOT NULL AUTO_INCREMENT,
 hire_date date NOT NULL,
 termination_date date,
 person_id int unsigned NOT NULL,
 PRIMARY KEY (employee_id),
 FOREIGN KEY (person_id) REFERENCES person (person_id)
);

CREATE TABLE customer(
 customer_id int unsigned NOT NULL AUTO_INCREMENT,
 person_id int unsigned NOT NULL,
 no_of_books_bought smallint unsigned, 
 PRIMARY KEY (customer_id),
 FOREIGN KEY (person_id) REFERENCES person (person_id)
);
CREATE TABLE store_transaction(
 transaction_id int unsigned NOT NULL AUTO_INCREMENT,
 transaction_date date,
 customer_id int unsigned NOT NULL,
 employee_id int unsigned NOT NULL,
 PRIMARY KEY (transaction_id),
 FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
 FOREIGN KEY (employee_id) REFERENCES employee (employee_id)
);

CREATE TABLE payments(
store_book_id int unsigned NOT NULL,
transaction_id int unsigned,
date_bought date NOT NULL,
PRIMARY KEY (store_book_id),
FOREIGN KEY (store_book_id) REFERENCES stock (store_book_id),
FOREIGN KEY (transaction_id) REFERENCES store_transaction (transaction_id)
);


 -- DROP TABLE IF EXISTS stock;

CREATE TABLE store(
monthly_payments date,
rent int unsigned ,
misc  smallint unsigned ,
monthly_wages MEDIUMINT unsigned,
PRIMARY KEY (monthly_payments)
);

CREATE TABLE gov_payments(
water smallint unsigned ,
property_tax smallint unsigned ,
electric smallint unsigned ,
monthly_payments date,
PRIMARY KEY (monthly_payments),
FOREIGN KEY (monthly_payments) REFERENCES store (monthly_payments)
);

CREATE TABLE service_payments(
monthly_payments date,
mobile smallint unsigned ,
landline smallint unsigned ,
Israel_Post  smallint unsigned ,
Xpress smallint unsigned ,
PRIMARY KEY (monthly_payments),
FOREIGN KEY (monthly_payments) REFERENCES store (monthly_payments)
);



CREATE TABLE salary(
employee_id int unsigned NOT NULL,
monthly_hours tinyint unsigned NOT NULL,
monthly_payments date,
PRIMARY KEY (employee_id, monthly_payments),
FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
FOREIGN KEY (monthly_payments) REFERENCES store (monthly_payments)
);

CREATE TABLE book_order(
 order_date date NOT NULL,
 customer_id int unsigned NOT NULL,
 book_id int unsigned NOT NULL,
 PRIMARY KEY (customer_id,book_id),
 FOREIGN KEY (book_id) REFERENCES books (book_id),
 FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

CREATE TABLE delivery(
transaction_id int unsigned NOT NULL,
tracking_no int unsigned NOT NULL AUTO_INCREMENT,
delivery_status ENUM('processing', 'in progress', 'delivered', 'received'),
delivery_method ENUM('Registered', 'Messenger', 'Express Messenger', 'Pick Up Point', 'Doorstep Delivery'),
service_provider ENUM('Israel Post', 'Xpress'),
total_weight float NOT NULL,
delivery_cost float NOT NULL,
address varchar(100) NOT NULL,
FOREIGN KEY (transaction_id) REFERENCES store_transaction (transaction_id),
PRIMARY KEY (tracking_no)
);

CREATE TABLE payment(
transaction_id int unsigned NOT NULL,
total_book_cost float NOT NULL,
payment_method ENUM('bit', 'Bank Transfer', 'Credit Card'),
FOREIGN KEY (transaction_id) REFERENCES store_transaction (transaction_id),
PRIMARY KEY (transaction_id)
);

-- CREATE TABLE delivery_prices(
-- delivery_method ENUM('Registered', 'Messenger', 'Express Messenger', 'Pick Up Point', 'Doorstep Delivery'),
-- service_provider ENUM('Israel Post', 'Xpress'),
-- weight_range varchar(30) NOT NULL,
-- cost  float NOT NULL,
-- PRIMARY KEY (delivery_method, service_provider, weight_start_range)
-- );
