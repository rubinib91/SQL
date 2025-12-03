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
