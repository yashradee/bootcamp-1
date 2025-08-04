-- Database: bootcamp

-- DROP DATABASE IF EXISTS bootcamp;

-- CREATE DATABASE bootcamp
--     WITH
--     OWNER = postgres
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'English_Mauritius.1252'
--     LC_CTYPE = 'English_Mauritius.1252'
--     LOCALE_PROVIDER = 'libc'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1
--     IS_TEMPLATE = False;

CREATE TABLE students (
id SERIAL PRIMARY KEY,
last_name VARCHAR(50),
first_name VARCHAR(50),
birth_date DATE
);

INSERT INTO students (first_name, last_name, birth_date) VALUES
('Marc', 'Benichou', '1998-11-02'),
('Yoan', 'Cohen', '2010-12-03'),
('Lea', 'Benichou', '1987-07-27'),
('Amelia', 'Dux', '1996-04-07'),
('David', 'Grez', '2003-06-14'),
('Omer', 'Simpson', '1980-10-03');

SELECT * FROM students;
SELECT * FROM students where last_name = 'Benichou' AND first_name = 'Marc';
SELECT * FROM students where last_name = 'Benichou' OR first_name = 'Marc';
SELECT * FROM students WHERE first_name LIKE '%a%';
SELECT * FROM students WHERE first_name LIKE 'a%';
SELECT * FROM students WHERE first_name LIKE '%a';
SELECT * FROM students WHERE first_name LIKE '%a_';
SELECT * FROM students WHERE id IN (1, 3);