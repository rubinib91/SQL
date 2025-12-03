CREATE DATABASE student;
USE student;
CREATE TABLE stu_data(
id int PRIMARY KEY auto_increment,
name varchar(30),
address varchar(30),
class int,
section varchar(2),
age int,
mark int,
grade varchar(2)
);
select * from stu_data;
insert into stu_data(name,address,class,section,age,mark,grade) values("eniyaa","kk nagar",1,"b",5,90,"a");
insert into stu_data(name,address,class,section,age,mark,grade) values("eniyaa","kk nagar",1,"b",5,90,"a");
select * from stu_data;
insert into stu_data(name,address,class,section,age,mark,grade) values("anu","anna nagar",1,"a",6,95,"a1"),("bhairavi","vadapalani",1,"c",5,92,"a2"),("deva","ashok nagar",1,"d",5,80,"c"),("saran","anna nagar",1,"a",6,91,"a1");
select * from stu_data;
alter table stu_data ADD mobile varchar(10);
select * from stu_data;
update stu_data set mobile="9966554477" where id=1;
update stu_data set mobile="9966552211" where id=2;
update stu_data set mobile="9987451245" where id=3;
update stu_data set mobile="9966554499" where id=4;
update stu_data set mobile="9933224411" where id=5;
update stu_data set mobile="9977554477" where id=6;
select * from stu_data;
alter table stu_data modify class varchar(1);
alter table stu_data modify class int;
select * from stu_data;

create table teacher(
id int primary key auto_increment,
name varchar(30)
);
insert into teacher(name) value("anitha"),("nivitha");
alter table teacher add age int;
select * from teacher;
update teacher set age=25 where id=1;
update teacher set age=22 where id=2;
select * from stu_data;
select * from teacher;
rename table teacher to faculty;
truncate table faculty;
select * from faculty;
drop table faculty;
select * from faculty;








