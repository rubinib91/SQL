CREATE DATABASE jk_construction;
USE jk_construction;
CREATE TABLE staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_name VARCHAR(50) NOT NULL,
    role VARCHAR(50),
    mobile VARCHAR(10)
);
CREATE TABLE material (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    material_name VARCHAR(50) NOT NULL,
    unit_price int
);
CREATE TABLE stock (
    stock_id INT PRIMARY KEY AUTO_INCREMENT,
    material_id INT,
    quantity INT,
    FOREIGN KEY (material_id) REFERENCES material(material_id)
);
CREATE TABLE attendance (
    attend_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT,
    attend_date DATE,
    status VARCHAR(10),   
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);
CREATE TABLE salary (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT,
    salary_amount INT,
    paid_date DATE,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);
INSERT INTO staff (staff_name, role, mobile)
VALUES
('Ramesh', 'Supervisor', '9876543210'),
('Suresh', 'Mason', '9123456780'),
('Anitha', 'Accountant', '9456781230'),
('Vijay', 'Labour', '9988776655'),
('Kiran', 'Electrician', '9877201234');
INSERT INTO material (material_name, unit_price)
VALUES
('Cement Bag', 380.00),
('Steel Rod', 520.00),
('Sand', 1500.00),
('Bricks', 600.00),
('Paint' , 250.00);
INSERT INTO stock (material_id, quantity)
VALUES(1, 150),(2, 80),(3, 40),(4, 500),(5, 120);








