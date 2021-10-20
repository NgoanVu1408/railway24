CREATE DATABASE sale_management;
USE sale_management;

CREATE TABLE  customers(
	customer_id		INT,
	first_name		VARCHAR(20),
	date_of_purchase	DATE
);

 CREATE TABLE sales(
 customer_id		INT,
 item_code         VARCHAR(20),
 date_of_purchase	DATE
 );