create database dbindustry;
use dbindustry;

CREATE TABLE emp_det(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
empname VARCHAR(30),
empcity VARCHAR(20),
department VARCHAR(15),
salary INT
);
INSERT INTO emp_det(empname,empcity,department,salary) 
VALUES("Anbu","Pune","QA",45000),
("Kani","Pune","QA",65000),
("Thiru","Madurai","Developer",75000),
("Vani","Chennai","Developer",55000),
("Mathi","Hydrabad","Support",40000),
("Rajesh","Bangalore","Support",35000),
("Aravind","Chennai","Developer",30000),
("Dheena","Chennai","QA",32000),
("Krishna","Chennai","QA",25000),
("Pavithra","Chennai","Developer",77000);
select * from emp_det;

SELECT department,COUNT(empname) AS total_emp FROM emp_det GROUP BY department;
SELECT department,AVG(salary) AS avg_salary FROM emp_det GROUP BY department;
SELECT empcity,COUNT(empname) AS no_of_emp FROM emp_det GROUP BY empcity;
SELECT department,MAX(salary) AS max_salary,MIN(salary) AS min_salary FROM emp_det GROUP BY department;
SELECT department,SUM(salary) AS total_salary FROM emp_det GROUP BY department;
SELECT department,COUNT(empname) AS emp_count FROM emp_det GROUP BY department HAVING emp_count>2;
SELECT department,AVG(salary) AS avg_salary FROM emp_det GROUP BY department HAVING avg_salary>50000;
SELECT empcity,COUNT(empname) AS emp_count FROM emp_det GROUP BY empcity HAVING emp_count>1;
SELECT department,SUM(salary) AS total_salary FROM emp_det GROUP BY department HAVING total_salary>150000;
SELECT empcity,AVG(salary) AS avg_salary FROM emp_det GROUP BY empcity;
SELECT empcity,AVG(salary) AS avg_salary FROM emp_det GROUP BY empcity HAVING avg_salary>60000;
SELECT department,SUM(salary) AS total_salary, COUNT(empname) AS total_emp FROM emp_det GROUP BY department HAVING total_salary>50000;
SELECT department,COUNT(empname) AS total_emp,MIN(salary)AS min_salary FROM emp_det GROUP BY department,empname HAVING min_salary<40000;











