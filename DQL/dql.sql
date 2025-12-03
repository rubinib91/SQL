create database dbindustry;
use dbindustry;
create table employee(
id int primary key auto_increment,
name varchar(25),
age int,
designation varchar(10),
join_date date,
mobile varchar(10),
salary int
);
select * from employee;
insert into employee(name,age,designation,join_date,mobile,salary) value("rudran",25,"assistant",curdate(),"9874561245",25000),("Aswini",28,"assistant",curdate(),"9874455135",29000),("Varsha",28,"sr assistant",curdate(),"9678451245",35000),("Nikhil",27,"sr assistant",curdate(),"9974541245",28000),("Madhan",35,"Manager",curdate(),"9544561245",50000);
alter table employee modify designation varchar(20);
select * from employee;
select designation,avg(salary) as avg_salary from employee group by designation;
select name,join_date from employee where join_date>= date_sub(curdate(),interval 30 day);
select UPPER(name) as uname from employee; 
alter table employee add city1 varchar(10);
update employee set city1="chennai" where id=11;
update employee set city1="chennai" where id=12;
update employee set city1="Bangalore" where id=13;
update employee set city1="Bangalore" where id=14;
update employee set city1="Coimbatore" where id=15;
select * from employee;
select city1,count(city1) as emp_city from employee group by city1;
select designation,avg(salary) as avg_salary from employee  group by designation having avg_salary>50000;
select name, length(name) as name_len from employee group by name having name_len>5;
select name,replace(name,"a","@") as new_name from employee group by name;
SELECT name, join_date, DATEDIFF(CURDATE(), join_date) AS working_days FROM employee;

select name,join_date, month(join_date) from employee;
SELECT city1, MAX(salary) AS max_salary
FROM employee
GROUP BY city1;

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











