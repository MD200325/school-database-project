-- 1. Create the database
CREATE DATABASE School;

-- 2. Use the database (depends on DBMS)
-- USE School;

-- 3. Create the `teachers` table
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    homeroom_number INT NOT NULL,
    department VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL
);

-- 4. Create the `students` table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    homeroom_number INT NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE,
    graduation_year YEAR NOT NULL,
    CONSTRAINT phone_required CHECK (phone IS NOT NULL)
);

-- Insert student: Mark Watney
INSERT INTO students (student_id, first_name, last_name, homeroom_number, phone, email, graduation_year)
VALUES (1, 'Mark', 'Watney', 5, '777-555-1234', NULL, 2035);

-- Insert teacher: Jonas Salk
INSERT INTO teachers (teacher_id, first_name, last_name, homeroom_number, department, email, phone)
VALUES (1, 'Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', '777-555-4321');
