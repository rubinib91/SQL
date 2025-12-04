CREATE DATABASE business;
use business;
CREATE TABLE customer(
customer_id int PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(30),
customer_mobile varchar(10)
);
CREATE TABLE product(
product_id int PRIMARY KEY AUTO_INCREMENT,
product_name varchar(25),
product_price int
);
CREATE TABLE orders(
orderid int PRIMARY KEY AUTO_INCREMENT,
user_id int,
product_id int,
order_date datetime,
FOREIGN KEY (user_id) REFERENCES customer(customer_id),
FOREIGN KEY (product_id) REFERENCES product(product_id)
);
INSERT INTO customer (customer_name, customer_mobile)
VALUES ('Arun', '9876543210'),('Priya', '9123456780'),('Karthik R', '9789012345'), ('Nandhini','7856487185'),('Anu','9876543212');
INSERT INTO product (product_name, product_price)
VALUES('Mobile Phone', 15000),('Laptop', 55000),('Headphones', 2000),('Smart watch',2000),('Bluetooth Speaker',3500);
INSERT INTO orders (user_id, product_id, order_date) 
VALUES(1, 2, NOW()),(2, 1, NOW()),(3, 4, NOW()),(1, 3, NOW()),(4, 2, NOW());


SELECT * FROM customer;
SELECT * FROM product;
SELECT * FROM orders;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    teacher VARCHAR(50) NOT NULL
);

CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
select * from students;
select * from courses;
select * from student_courses;

SELECT 
    c.customer_name,
    p.product_name,
    o.order_date
FROM orders o
INNER JOIN customer c ON o.user_id = c.customer_id
INNER JOIN product p ON o.product_id = p.product_id;

SELECT 
    p.product_name,
    p.product_price,
    COUNT(o.orderid) AS total_orders
FROM product p
INNER JOIN orders o 
    ON p.product_id = o.product_id
GROUP BY 
    p.product_id, p.product_name, p.product_price;




SELECT p.product_id, p.product_name,p.product_price,o.orderid AS ordered_or_not
FROM product p LEFT JOIN orders o ON p.product_id = o.product_id;

SELECT o.orderid,o.order_date,p.product_id,p.product_name,p.product_price
FROM product p RIGHT JOIN orders o ON p.product_id = o.product_id;








