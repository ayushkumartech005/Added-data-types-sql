-- Data Types and Constraints Practice
-- PostgreSQL


-- =========================
-- DATA TYPES
-- =========================

CREATE TABLE student (
    student_id SERIAL,
    name VARCHAR(100),
    age INT,
    marks NUMERIC(5,2),
    joining_date DATE,
    is_active BOOLEAN
);


-- =========================
-- CHARACTER DATA TYPES
-- =========================

CREATE TABLE users (
    user_id SERIAL,
    username VARCHAR(50),
    gender CHAR(1),
    description TEXT
);


-- =========================
-- CONSTRAINTS
-- =========================

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    age INT CHECK (age >= 18),
    department VARCHAR(50) DEFAULT 'IT'
);


-- =========================
-- INSERT DATA
-- =========================

INSERT INTO employees (name, email, age)
VALUES
('Ayush', 'ayush@gmail.com', 22),
('Rahul', 'rahul@gmail.com', 24);


-- =========================
-- VIEW DATA
-- =========================

SELECT * FROM employees;
