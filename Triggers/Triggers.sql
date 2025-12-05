create database mzxtech;
use mzxtech;

CREATE TABLE employees(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
empname VARCHAR(30),
empcity VARCHAR(20),
department VARCHAR(15),
job_title VARCHAR(20),
salary INT
);
CREATE TABLE employees_log(
log_id INT PRIMARY KEY AUTO_INCREMENT,
action_type VARCHAR(40),
empname VARCHAR(30),
empnewname VARCHAR(30),
empoldcity VARCHAR(20),
empnewcity VARCHAR(20),
olddepartment VARCHAR(15),
newdepartment VARCHAR(15),
old_job_title VARCHAR(20),
new_job_title VARCHAR(20),
newsalary INT,
oldsalary INT,
log_time TIMESTAMP default current_timestamp
);

-- before insert
DELIMITER $$
CREATE TRIGGER trg_before_insert_timestamp
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
SET NEW.created_time = CURRENT_TIMESTAMP;
END 
$$ DELIMITER ;

--after insert
DELIMITER $$
CREATE TRIGGER trg_after_insert_employee
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employees_log(
        action_type,
        empname,
        empnewname,
        empnewcity,
        newdepartment,
        new_job_title,
        newsalary
    )
    VALUES (
        'INSERT',
        NEW.empname,
        NEW.empname,
        NEW.empcity,
        NEW.department,
        NEW.job_title,
        NEW.salary
    );
END DELIMITER $$

-- update
DELIMITER $$
CREATE TRIGGER trg_after_update_salary_simple
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employees_log(
        action_type,
        empname,
        oldsalary,
        newsalary,
        log_time
    )
    VALUES (
        'SALARY UPDATE',
        OLD.empname,
        OLD.salary,
        NEW.salary,
        CURRENT_TIMESTAMP
    );
END 

$$ DELIMITER ;

-- after delete
DELIMITER $$
CREATE TRIGGER trg_after_delete_employee
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employees_log(
        action_type,
        empname,
        empoldcity,
        olddepartment,
        old_job_title,
        oldsalary,
        log_time
    )
    VALUES (
        'DELETE',
        OLD.empname,
        OLD.empcity,
        OLD.department,
        OLD.job_title,
        OLD.salary,
        CURRENT_TIMESTAMP
    );
END
 $$ DELIMITER ;






