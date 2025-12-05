create database abctech;
use abctech;

CREATE TABLE employee(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
empname VARCHAR(30),
empcity VARCHAR(20),
department VARCHAR(15),
job_title VARCHAR(20),
salary INT
);
INSERT INTO employee(empname,empcity,department,job_title,salary) 
VALUES("Anbu","Pune","QA","Sr. Tester",45000),
("Kani","Pune","QA","Team Lead",65000),
("Thiru","Madurai","Development","Sr.Developer",75000),
("Vani","Chennai","Development","Sr.Developer",55000),
("Mathi","Hydrabad","Development","Sr.Developer",40000),
("Rajesh","Bangalore","Development","Sr.Developer",35000),
("Aravind","Chennai","Development","Jr.Developer",30000),
("Dheena","Chennai","QA","Jr. Tester",32000),
("Krishna","Chennai","QA","Jr. Tester",25000),
("Pavithra","Chennai","Development","Team Lead",77000);
SELECT * FROM employee;

-- Find departments with more than 3 employees
SELECT department, COUNT(*) AS total_employees
FROM employee GROUP BY department HAVING COUNT(*) > 3;

-- Find departments with average salary > 40000
SELECT department,AVG(salary) as avg_salary FROM employee GROUP BY department HAVING avg_salary>40000;

-- Find job titles where max salary > 70000
SELECT job_title,MAX(salary) as max_salary FROM employee GROUP BY job_title HAVING max_salary>70000;

-- Groups with total salary > 200000
SELECT job_title,SUM(salary) as total_salary FROM employee GROUP BY job_title HAVING total_salary>200000;

-- All columns from employees
SELECT * FROM employee;
-- Specific columns only
SELECT emp_id,empname,department,salary FROM employee;

-- With column aliases
SELECT SUM(salary) AS toal_salary FROM employee;

-- Where salary > 45000
SELECT * FROM employee  WHERE salary>45000;

-- Where department = 'QA'
SELECT * FROM employee  WHERE department="QA";

-- Multiple conditions (AND)
SELECT * FROM employee  WHERE department="QA" && salary>40000;

-- With LIKE pattern
SELECT empname, salary FROM employee WHERE empname LIKE 'A%';  

-- Sort by salary descending order
SELECT *FROM employee ORDER BY salary DESC;

-- Sort by name ascending order 
SELECT * FROM employee ORDER BY empname ASC;

-- Limit display datas only 5
SELECT * FROM employee LIMIT 5;

-- Limit display from start to end number
SELECT * FROM employee LIMIT 5, 5;

-- to show distinct departments
SELECT DISTINCT department FROM employee;

-- to show number of distinct departments
SELECT COUNT(DISTINCT department) AS total_departments FROM employee;

-- Count employees working in a department
SELECT department, COUNT(*) AS total_employees FROM employee
GROUP BY department;

-- Average salary by department
SELECT department, AVG(salary) AS avg_salary FROM employee
GROUP BY department;

-- Total salary by department
SELECT department, SUM(salary) AS total_salary FROM employee
GROUP BY department;

-- Highest salary by department
SELECT department, MAX(salary) AS highest_salary FROM employee
GROUP BY department;

-- Departments > 5 employees 
SELECT department, COUNT(*) AS total_employees FROM employee
GROUP BY department HAVING COUNT(*) > 5;

-- Average salary > 50000
SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 50000;

-- Total salary > 200000 
SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department
HAVING SUM(salary) > 200000;

-- Multiple aggregate functions
SELECT department,
       COUNT(*) AS total_employees,
       AVG(salary) AS avg_salary,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary
FROM employee
GROUP BY department;































