
CREATE DATABASE BahubaliMovie;
USE BahubaliMovie;
CREATE TABLE casting (
    cast_id INT PRIMARY KEY AUTO_INCREMENT,
    cast_name VARCHAR(50),
    role_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    nationality VARCHAR(50),
    experience_years INT,
    contact VARCHAR(20)
);

CREATE TABLE materials (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    material_name VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    cost INT,
    vendor_name VARCHAR(50),
    purchase_date DATE,
    status VARCHAR(20)
);

CREATE TABLE staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_name VARCHAR(50),
    work_department VARCHAR(50),
    join_date DATE,
    contact VARCHAR(20),
    address VARCHAR(100),
    gender VARCHAR(10),
    salary INT
);

-- 4️⃣ Attendance Table (7 columns)
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT,
    attendance_date DATE,
    status VARCHAR(10),
    shift VARCHAR(20),
    working_hours INT,
    remarks VARCHAR(100),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE salary_maintenance (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    cast_id INT,
    salary_amount INT,
    pay_date DATE,
    bonus INT,
    mode_of_payment VARCHAR(20),
    remarks VARCHAR(100),
    FOREIGN KEY (cast_id) REFERENCES casting(cast_id)
);

CREATE TABLE technicians (
    tech_id INT PRIMARY KEY AUTO_INCREMENT,
    tech_name VARCHAR(50),
    skill VARCHAR(50),
    experience_years INT,
    department VARCHAR(50),
    contact VARCHAR(20),
    availability VARCHAR(20),
    salary DECIMAL(10,2)
);

INSERT INTO casting(cast_name, role_name, gender, age, nationality, experience_years, contact) VALUES
('Prabhas', 'Baahubali', 'Male', 44, 'Indian', 20, '8888888888'),
('Anushka Shetty', 'Devasena', 'Female', 42, 'Indian', 18, '9999999999'),
('Rana Daggubati', 'Bhallaladeva', 'Male', 40, 'Indian', 15, '7777777777'),
('Tamannaah Bhatia', 'Avanthika', 'Female', 35, 'Indian', 12, '6666666666');

INSERT INTO materials(material_name, category, quantity, cost, vendor_name, purchase_date, status) VALUES
('Sword', 'Props', 200, 50000, 'Royal Props', '2025-12-01', 'Available'),
('Armor', 'Costume', 150, 75000, 'Steel FX', '2025-12-03', 'In Use'),
('Camera Stand', 'Equipment', 50, 40000, 'CamTech', '2025-12-02', 'Available');

INSERT INTO staff(staff_name, work_department, join_date, contact, address, gender, salary) VALUES
('Kiran', 'Makeup', '2025-11-10', '8012345678', 'Hyderabad', 'Male', 35000),
('Arjun', 'Lighting', '2025-10-20', '9090909090', 'Chennai', 'Male', 30000),
('Suresh', 'Camera', '2025-09-15', '7007007007', 'Bengaluru', 'Male', 45000);


INSERT INTO attendance(staff_id, attendance_date, status, shift, working_hours, remarks) VALUES
(1, '2025-12-04', 'Present', 'Day', 8, 'On Time'),
(2, '2025-12-04', 'Absent', 'Night', 0, 'Leave'),
(3, '2025-12-04', 'Present', 'Day', 9, 'Extra Hours');

INSERT INTO salary_maintenance(cast_id, salary_amount, pay_date, bonus, mode_of_payment, remarks) VALUES
(1, 5000000, '2025-12-02', 500000, 'Bank Transfer', 'Advance Payment'),
(2, 3000000, '2025-12-02', 300000, 'Cash', 'Monthly Salary'),
(3, 4500000, '2025-12-02', 450000, 'UPI', 'Bonus Included');

INSERT INTO technicians(tech_name, skill, experience_years, department, contact, availability, salary) VALUES
('Ravi', 'Sound', 10, 'Audio', '7878787878', 'Available', 40000),
('Mahesh', 'VFX', 12, 'Graphics', '9091919191', 'Busy', 65000),
('Raj', 'Editing', 8, 'Post Production', '9123456789', 'Available', 55000);
