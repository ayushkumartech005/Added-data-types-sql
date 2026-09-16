
-- =====================================================
-- PostgreSQL Constraints Practice
-- =====================================================


-- 1. PRIMARY KEY

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

INSERT INTO students (name, age)
VALUES
('Ayush', 22),
('Rahul', 24),
('Amit', 21);

SELECT * FROM students;


-- 2. NOT NULL

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50)
);

INSERT INTO employees (name, department)
VALUES
('Ayush', 'IT'),
('Rahul', 'HR');

SELECT * FROM employees;


-- 3. UNIQUE

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE
);

INSERT INTO users (username, email)
VALUES
('Ayush', 'ayush@gmail.com'),
('Rahul', 'rahul@gmail.com');

SELECT * FROM users;


-- 4. CHECK

CREATE TABLE persons (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT CHECK (age >= 18)
);

INSERT INTO persons (name, age)
VALUES
('Ayush', 22),
('Rahul', 25);

SELECT * FROM persons;


-- 5. DEFAULT

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) DEFAULT 'India'
);

INSERT INTO departments (department_name)
VALUES
('IT'),
('HR'),
('Finance');

SELECT * FROM departments;


-- 6. ALTER TABLE - ADD NOT NULL

CREATE TABLE company (
    company_id SERIAL PRIMARY KEY,
    company_name VARCHAR(100),
    city VARCHAR(100)
);

ALTER TABLE company
ALTER COLUMN city SET NOT NULL;


-- 7. ALTER TABLE - RENAME COLUMN

ALTER TABLE company
RENAME COLUMN company_name TO name;


-- 8. ALTER TABLE - CHANGE DATA TYPE

ALTER TABLE company
ALTER COLUMN city TYPE VARCHAR(150);


-- 9. ADD CHECK CONSTRAINT

CREATE TABLE employees_check (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    salary NUMERIC(10,2)
);

ALTER TABLE employees_check
ADD CONSTRAINT salary_check CHECK (salary > 0);

INSERT INTO employees_check (name, salary)
VALUES
('Ayush', 50000),
('Rahul', 60000);

SELECT * FROM employees_check;


-- =====================================================
-- CONSTRAINTS COVERED
-- =====================================================
-- PRIMARY KEY
-- NOT NULL
-- UNIQUE
-- CHECK
-- DEFAULT
-- ALTER TABLE
-- RENAME COLUMN
-- ALTER COLUMN
-- ADD CONSTRAINT
-- =====================================================
