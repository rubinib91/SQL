create database systech;
use systech;

CREATE TABLE employees1(
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    empname VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    join_date DATE NOT NULL
);

-- Create a table for employees with proper constraints (PK, NOT NULL, UNIQUE) using DDL.
INSERT INTO employees1(empname, email, department, salary, join_date) VALUES
('Arun', 'arun@gmail.com', 'IT', 48000, '2025-11-10'),
('Priya', 'priya@gmail.com', 'HR', 52000, '2025-11-20'),
('Kavin', 'kavin@gmail.com', 'Finance', 60000, '2025-12-01'),
('Deepa', 'deepa@gmail.com', 'IT', 75000, '2025-11-25'),
('Nisha', 'nisha@gmail.com', 'Sales', 45000, '2025-12-03');

-- Update using UPPER()
UPDATE employees1
SET empname = UPPER(empname)
WHERE emp_id = 1;

-- show department-wise total salary using SUM() and GROUP BY.
SELECT department, SUM(salary) AS total_salary
FROM employees1
GROUP BY department;

--  to find employees who joined in the last 30 days using a date function.
SELECT empname, join_date
FROM employees1
WHERE join_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- to shows name, salary, and salary rounded to 2 decimals using ROUND().
SELECT empname, salary, ROUND(salary, 2) AS rounded_salary
FROM employees1;

-- Find all employees whose name length is greater than 4 using LENGTH().
SELECT empname, LENGTH(empname) AS name_length
FROM employees1
WHERE LENGTH(empname) > 4;

-- to lists each department and filters only where the average salary is above 50,000 using HAVING.
SELECT department, AVG(salary) AS avg_salary
FROM employees1
GROUP BY department
HAVING AVG(salary) > 50000;
UPDATE employees1
SET salary = salary * 1.10;

-- Update salary by adding 10% using DML + number functions (e.g., salary = salary * 1.10).
UPDATE employees1
SET salary = salary * 1.10;

-- Alter the employee table and add a new column bonus INT using DDL.
ALTER TABLE employees1
ADD bonus INT DEFAULT 0;

-- to show employees ordered by join date (oldest → newest) and display the YEAR of join date using YEAR().
SELECT empname, join_date, YEAR(join_date) AS join_year
FROM employees1
ORDER BY join_date ASC;






