-- Database: hollywood

-- DROP DATABASE IF EXISTS hollywood;

-- CREATE DATABASE hollywood
--     WITH
--     OWNER = postgres
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'English_Mauritius.1252'
--     LC_CTYPE = 'English_Mauritius.1252'
--     LOCALE_PROVIDER = 'libc'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1
--     IS_TEMPLATE = False;


SELECT * FROM student_course
inner join students
on student_course.student_id=students.id
inner join courses
on student_course.course_id=courses.id;

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    nic TEXT,
    address TEXT,
    contactnumber TEXT,
    department TEXT,
    salary INTEGER
);

INSERT INTO employees (id, name, nic, address, contactnumber, department, salary) VALUES
(1, 'Nayar', '45324', 'Curepipe', '54354', 'tutoring', 20000),
(2, 'Abraham', '5432534', 'Floreal', '543', 'admin', 200000),
(3, 'Nirmal', '7657654', 'St-Pierre', '453432', 'tutoring', 50000),
(4, 'Jessni', '7657654', 'St-Pierre', '453432', 'admin', 25000),
(5, 'stelle', '7657650', 'Port-Louis', '45343432', 'marketing', 30000),
(6, 'yash', '345354', 'Grand Baie', '654543', 'marketing', 35000);
INSERT INTO employees (id, name, nic, address, contactnumber, department, salary) 
VALUES (7, 'yajnee', '23432423', 'Floreal', '654654', 'sales', 45000);

SELECT * FROM employees
SELECT department, sum(salary) FROM employees GROUP BY department;
SELECT address, sum(salary) FROM employees GROUP BY address;
SELECT course_id,count(student_id) FROM student_course
GROUP BY course_id;

SELECT course_id, courses.coursename, count(student_id) from student_course
inner join courses
on courses.id=student_course.course_id
GROUP BY course_id, courses.coursename
select * from student_course