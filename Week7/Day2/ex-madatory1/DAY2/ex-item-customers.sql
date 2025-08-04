-- Database: pubic

-- DROP DATABASE IF EXISTS pubic;

-- CREATE DATABASE pubic
--     WITH
--     OWNER = postgres
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'English_Mauritius.1252'
--     LC_CTYPE = 'English_Mauritius.1252'
--     LOCALE_PROVIDER = 'libc'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1
--     IS_TEMPLATE = False;

CREATE TABLE items (
    id INT,
    name VARCHAR(50),
    price INT
);
CREATE TABLE CUSTOMERS (
ID INT,
firstname VARCHAR(50),
lastname VARCHAR(50)
);

INSERT INTO items VALUES (1,'Small Desk',100);
INSERT INTO items VALUES (2 ,'Large Desk',300);
INSERT INTO items VALUES (3,'Fan',80);

INSERT INTO customers VALUES (1, 'Greg', 'Jones');
INSERT INTO customers VALUES (2, 'Sandra', 'Jones');
INSERT INTO customers VALUES (3, 'Scott', 'Scott');
INSERT INTO customers VALUES (4, 'Trevor', 'Green');
INSERT INTO customers VALUES (5, 'Melanie', 'Johnson');

SELECT * FROM items;
SELECT * FROM items WHERE price > 80;
SELECT * FROM items WHERE price < 300;
SELECT * FROM customers WHERE lastname = 'smith';
SELECT * FROM customers WHERE lastname = 'Jones';
SELECT * FROM customers WHERE firstname != 'Scott';
