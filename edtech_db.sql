--IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'EdTechDB')
--BEGIN
--    CREATE DATABASE EdTechDB;
--END
--GO

--USE EdTechDB;
--GO



---- SQL Script for EdTech Dataset (MSSQL Server Compatible)
--CREATE TABLE students (
--    student_id INT PRIMARY KEY,
--    first_name VARCHAR(50),
--    last_name VARCHAR(50),
--    gender VARCHAR(10),
--    date_of_birth DATE,
--    email VARCHAR(100),
--    city VARCHAR(50),
--    country VARCHAR(50),
--    registration_date DATE
--);
--GO

--CREATE TABLE courses (
--    course_id INT PRIMARY KEY,
--    course_name VARCHAR(100),
--    category VARCHAR(50),
--    instructor_name VARCHAR(100),
--    course_level VARCHAR(20),
--    price DECIMAL(8,2),
--    published_date DATE
--);
--GO

--CREATE TABLE enrollments (
--    enrollment_id INT PRIMARY KEY,
--    student_id INT,
--    course_id INT,
--    enrollment_date DATE,
--    progress_percent DECIMAL(5,2),
--    status VARCHAR(20),
--    rating DECIMAL(2,1) NULL,
--    FOREIGN KEY (student_id) REFERENCES students(student_id),
--    FOREIGN KEY (course_id) REFERENCES courses(course_id)
--);
--GO

---- Insert Students
--INSERT INTO students VALUES (1, 'Saanvi', 'Singh', 'Male', CONVERT(DATE, '1997-12-14', 23), 'saanvi.singh1@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-05-01', 23));
--INSERT INTO students VALUES (2, 'Vivaan', 'Gupta', 'Female', CONVERT(DATE, '2003-03-01', 23), 'vivaan.gupta2@example.com', 'Mumbai', 'India', CONVERT(DATE, '2023-06-15', 23));
--INSERT INTO students VALUES (3, 'Aditya', 'Nair', 'Female', CONVERT(DATE, '2000-05-10', 23), 'aditya.nair3@example.com', 'Delhi', 'India', CONVERT(DATE, '2024-05-12', 23));
--INSERT INTO students VALUES (4, 'Vivaan', 'Sharma', 'Male', CONVERT(DATE, '2005-05-19', 23), 'vivaan.sharma4@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-10-07', 23));
--INSERT INTO students VALUES (5, 'Anaya', 'Gupta', 'Male', CONVERT(DATE, '1999-04-02', 23), 'anaya.gupta5@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2022-08-16', 23));
--INSERT INTO students VALUES (6, 'Saanvi', 'Reddy', 'Female', CONVERT(DATE, '1996-04-08', 23), 'saanvi.reddy6@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-10-06', 23));
--INSERT INTO students VALUES (7, 'Aarav', 'Singh', 'Female', CONVERT(DATE, '1996-09-16', 23), 'aarav.singh7@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-04-17', 23));
--INSERT INTO students VALUES (8, 'Vivaan', 'Verma', 'Male', CONVERT(DATE, '2005-11-20', 23), 'vivaan.verma8@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-11-07', 23));
--INSERT INTO students VALUES (9, 'Aditya', 'Patel', 'Female', CONVERT(DATE, '1998-06-17', 23), 'aditya.patel9@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-09-03', 23));
--INSERT INTO students VALUES (10, 'Ishaan', 'Verma', 'Male', CONVERT(DATE, '1998-09-28', 23), 'ishaan.verma10@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2022-04-17', 23));
--INSERT INTO students VALUES (11, 'Aditya', 'Kumar', 'Female', CONVERT(DATE, '1995-08-04', 23), 'aditya.kumar11@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-06-20', 23));
--INSERT INTO students VALUES (12, 'Tara', 'Chopra', 'Female', CONVERT(DATE, '2004-10-17', 23), 'tara.chopra12@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-05-07', 23));
--INSERT INTO students VALUES (13, 'Aditya', 'Chopra', 'Male', CONVERT(DATE, '2005-04-08', 23), 'aditya.chopra13@example.com', 'Delhi', 'India', CONVERT(DATE, '2022-10-22', 23));
--INSERT INTO students VALUES (14, 'Aditya', 'Sharma', 'Male', CONVERT(DATE, '2000-01-30', 23), 'aditya.sharma14@example.com', 'Delhi', 'India', CONVERT(DATE, '2023-04-05', 23));
--INSERT INTO students VALUES (15, 'Saanvi', 'Gupta', 'Male', CONVERT(DATE, '2001-10-21', 23), 'saanvi.gupta15@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-01-16', 23));
--INSERT INTO students VALUES (16, 'Diya', 'Patel', 'Male', CONVERT(DATE, '1998-01-31', 23), 'diya.patel16@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-11-30', 23));
--INSERT INTO students VALUES (17, 'Diya', 'Reddy', 'Male', CONVERT(DATE, '2001-12-17', 23), 'diya.reddy17@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-11-13', 23));
--INSERT INTO students VALUES (18, 'Anaya', 'Chopra', 'Female', CONVERT(DATE, '1997-11-24', 23), 'anaya.chopra18@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-04-09', 23));
--INSERT INTO students VALUES (19, 'Aarav', 'Yadav', 'Male', CONVERT(DATE, '1998-04-04', 23), 'aarav.yadav19@example.com', 'Pune', 'India', CONVERT(DATE, '2023-02-14', 23));
--INSERT INTO students VALUES (20, 'Kabir', 'Chopra', 'Female', CONVERT(DATE, '2000-11-14', 23), 'kabir.chopra20@example.com', 'Delhi', 'India', CONVERT(DATE, '2022-03-15', 23));
--INSERT INTO students VALUES (21, 'Aarav', 'Yadav', 'Male', CONVERT(DATE, '2004-05-10', 23), 'aarav.yadav21@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-08-27', 23));
--INSERT INTO students VALUES (22, 'Kabir', 'Kumar', 'Female', CONVERT(DATE, '1999-11-13', 23), 'kabir.kumar22@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-06-25', 23));
--INSERT INTO students VALUES (23, 'Saanvi', 'Reddy', 'Female', CONVERT(DATE, '1999-07-01', 23), 'saanvi.reddy23@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-07-23', 23));
--INSERT INTO students VALUES (24, 'Ishaan', 'Reddy', 'Female', CONVERT(DATE, '1995-11-30', 23), 'ishaan.reddy24@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-01-05', 23));
--INSERT INTO students VALUES (25, 'Aditya', 'Reddy', 'Male', CONVERT(DATE, '2005-03-28', 23), 'aditya.reddy25@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2022-09-24', 23));
--INSERT INTO students VALUES (26, 'Riya', 'Nair', 'Male', CONVERT(DATE, '2000-09-07', 23), 'riya.nair26@example.com', 'Kolkata', 'India', CONVERT(DATE, '2022-03-05', 23));
--INSERT INTO students VALUES (27, 'Anaya', 'Chopra', 'Female', CONVERT(DATE, '2003-11-28', 23), 'anaya.chopra27@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-11-25', 23));
--INSERT INTO students VALUES (28, 'Diya', 'Verma', 'Female', CONVERT(DATE, '2005-02-13', 23), 'diya.verma28@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-09-07', 23));
--INSERT INTO students VALUES (29, 'Aarav', 'Reddy', 'Female', CONVERT(DATE, '1999-10-10', 23), 'aarav.reddy29@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-11-06', 23));
--INSERT INTO students VALUES (30, 'Diya', 'Yadav', 'Female', CONVERT(DATE, '2000-08-26', 23), 'diya.yadav30@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-09-24', 23));
--INSERT INTO students VALUES (31, 'Anaya', 'Patel', 'Female', CONVERT(DATE, '2005-12-01', 23), 'anaya.patel31@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-06-11', 23));
--INSERT INTO students VALUES (32, 'Diya', 'Yadav', 'Female', CONVERT(DATE, '1995-03-08', 23), 'diya.yadav32@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-06-07', 23));
--INSERT INTO students VALUES (33, 'Aditya', 'Nair', 'Male', CONVERT(DATE, '2000-02-15', 23), 'aditya.nair33@example.com', 'Kolkata', 'India', CONVERT(DATE, '2022-09-26', 23));
--INSERT INTO students VALUES (34, 'Anaya', 'Nair', 'Male', CONVERT(DATE, '1996-09-06', 23), 'anaya.nair34@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-10-10', 23));
--INSERT INTO students VALUES (35, 'Saanvi', 'Gupta', 'Female', CONVERT(DATE, '2001-06-24', 23), 'saanvi.gupta35@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-01-12', 23));
--INSERT INTO students VALUES (36, 'Diya', 'Patel', 'Male', CONVERT(DATE, '1995-03-27', 23), 'diya.patel36@example.com', 'Pune', 'India', CONVERT(DATE, '2023-07-14', 23));
--INSERT INTO students VALUES (37, 'Tara', 'Reddy', 'Female', CONVERT(DATE, '2000-06-17', 23), 'tara.reddy37@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-05-09', 23));
--INSERT INTO students VALUES (38, 'Diya', 'Reddy', 'Female', CONVERT(DATE, '2001-05-16', 23), 'diya.reddy38@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-04-15', 23));
--INSERT INTO students VALUES (39, 'Tara', 'Verma', 'Male', CONVERT(DATE, '1998-03-28', 23), 'tara.verma39@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-11-18', 23));
--INSERT INTO students VALUES (40, 'Diya', 'Chopra', 'Male', CONVERT(DATE, '2000-05-25', 23), 'diya.chopra40@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-03-12', 23));
--INSERT INTO students VALUES (41, 'Aarav', 'Patel', 'Female', CONVERT(DATE, '2005-07-29', 23), 'aarav.patel41@example.com', 'Kolkata', 'India', CONVERT(DATE, '2022-02-26', 23));
--INSERT INTO students VALUES (42, 'Riya', 'Kumar', 'Male', CONVERT(DATE, '1997-12-28', 23), 'riya.kumar42@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2024-08-12', 23));
--INSERT INTO students VALUES (43, 'Riya', 'Nair', 'Male', CONVERT(DATE, '1995-03-13', 23), 'riya.nair43@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-04-10', 23));
--INSERT INTO students VALUES (44, 'Vivaan', 'Gupta', 'Male', CONVERT(DATE, '1997-07-21', 23), 'vivaan.gupta44@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-03-06', 23));
--INSERT INTO students VALUES (45, 'Ishaan', 'Gupta', 'Male', CONVERT(DATE, '2003-06-11', 23), 'ishaan.gupta45@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-07-07', 23));
--INSERT INTO students VALUES (46, 'Ishaan', 'Yadav', 'Female', CONVERT(DATE, '2004-12-13', 23), 'ishaan.yadav46@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-05-05', 23));
--INSERT INTO students VALUES (47, 'Diya', 'Reddy', 'Female', CONVERT(DATE, '2001-09-15', 23), 'diya.reddy47@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-01-17', 23));
--INSERT INTO students VALUES (48, 'Vivaan', 'Reddy', 'Male', CONVERT(DATE, '2003-02-14', 23), 'vivaan.reddy48@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-04-30', 23));
--INSERT INTO students VALUES (49, 'Vivaan', 'Reddy', 'Female', CONVERT(DATE, '2004-03-31', 23), 'vivaan.reddy49@example.com', 'Mumbai', 'India', CONVERT(DATE, '2023-10-22', 23));
--INSERT INTO students VALUES (50, 'Kabir', 'Kumar', 'Female', CONVERT(DATE, '2004-02-20', 23), 'kabir.kumar50@example.com', 'Pune', 'India', CONVERT(DATE, '2022-04-09', 23));
--INSERT INTO students VALUES (51, 'Kabir', 'Kumar', 'Female', CONVERT(DATE, '2000-10-02', 23), 'kabir.kumar51@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-10-18', 23));
--INSERT INTO students VALUES (52, 'Tara', 'Patel', 'Female', CONVERT(DATE, '2005-03-20', 23), 'tara.patel52@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-09-11', 23));
--INSERT INTO students VALUES (53, 'Vivaan', 'Reddy', 'Male', CONVERT(DATE, '1996-02-06', 23), 'vivaan.reddy53@example.com', 'Pune', 'India', CONVERT(DATE, '2024-12-27', 23));
--INSERT INTO students VALUES (54, 'Riya', 'Singh', 'Female', CONVERT(DATE, '1999-08-22', 23), 'riya.singh54@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-05-24', 23));
--INSERT INTO students VALUES (55, 'Saanvi', 'Sharma', 'Male', CONVERT(DATE, '2000-09-01', 23), 'saanvi.sharma55@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-01-17', 23));
--INSERT INTO students VALUES (56, 'Kabir', 'Gupta', 'Female', CONVERT(DATE, '1996-02-17', 23), 'kabir.gupta56@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-09-28', 23));
--INSERT INTO students VALUES (57, 'Vivaan', 'Singh', 'Female', CONVERT(DATE, '1999-01-23', 23), 'vivaan.singh57@example.com', 'Kolkata', 'India', CONVERT(DATE, '2022-01-07', 23));
--INSERT INTO students VALUES (58, 'Diya', 'Verma', 'Male', CONVERT(DATE, '1999-08-09', 23), 'diya.verma58@example.com', 'Mumbai', 'India', CONVERT(DATE, '2023-08-22', 23));
--INSERT INTO students VALUES (59, 'Saanvi', 'Gupta', 'Female', CONVERT(DATE, '2000-02-25', 23), 'saanvi.gupta59@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-05-24', 23));
--INSERT INTO students VALUES (60, 'Saanvi', 'Singh', 'Female', CONVERT(DATE, '1996-03-22', 23), 'saanvi.singh60@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-05-30', 23));
--INSERT INTO students VALUES (61, 'Aditya', 'Verma', 'Female', CONVERT(DATE, '2005-08-11', 23), 'aditya.verma61@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-02-26', 23));
--INSERT INTO students VALUES (62, 'Diya', 'Chopra', 'Female', CONVERT(DATE, '1998-09-29', 23), 'diya.chopra62@example.com', 'Mumbai', 'India', CONVERT(DATE, '2023-11-29', 23));
--INSERT INTO students VALUES (63, 'Saanvi', 'Yadav', 'Female', CONVERT(DATE, '2004-02-01', 23), 'saanvi.yadav63@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-10-15', 23));
--INSERT INTO students VALUES (64, 'Saanvi', 'Reddy', 'Female', CONVERT(DATE, '2001-07-11', 23), 'saanvi.reddy64@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-06-10', 23));
--INSERT INTO students VALUES (65, 'Diya', 'Sharma', 'Male', CONVERT(DATE, '1999-02-02', 23), 'diya.sharma65@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-10-14', 23));
--INSERT INTO students VALUES (66, 'Saanvi', 'Kumar', 'Male', CONVERT(DATE, '2002-08-29', 23), 'saanvi.kumar66@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-03-03', 23));
--INSERT INTO students VALUES (67, 'Anaya', 'Sharma', 'Female', CONVERT(DATE, '2004-07-29', 23), 'anaya.sharma67@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2022-04-19', 23));
--INSERT INTO students VALUES (68, 'Aarav', 'Patel', 'Male', CONVERT(DATE, '1997-07-17', 23), 'aarav.patel68@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-02-12', 23));
--INSERT INTO students VALUES (69, 'Aditya', 'Singh', 'Female', CONVERT(DATE, '1997-06-16', 23), 'aditya.singh69@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2024-07-24', 23));
--INSERT INTO students VALUES (70, 'Vivaan', 'Nair', 'Male', CONVERT(DATE, '2000-01-04', 23), 'vivaan.nair70@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-04-27', 23));
--INSERT INTO students VALUES (71, 'Aditya', 'Yadav', 'Male', CONVERT(DATE, '2005-09-08', 23), 'aditya.yadav71@example.com', 'Pune', 'India', CONVERT(DATE, '2024-06-28', 23));
--INSERT INTO students VALUES (72, 'Aditya', 'Patel', 'Female', CONVERT(DATE, '1999-04-06', 23), 'aditya.patel72@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-12-05', 23));
--INSERT INTO students VALUES (73, 'Diya', 'Nair', 'Female', CONVERT(DATE, '1996-11-18', 23), 'diya.nair73@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-03-13', 23));
--INSERT INTO students VALUES (74, 'Diya', 'Yadav', 'Male', CONVERT(DATE, '1999-08-09', 23), 'diya.yadav74@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-04-30', 23));
--INSERT INTO students VALUES (75, 'Kabir', 'Reddy', 'Male', CONVERT(DATE, '2002-02-20', 23), 'kabir.reddy75@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-05-14', 23));
--INSERT INTO students VALUES (76, 'Saanvi', 'Singh', 'Male', CONVERT(DATE, '1996-04-30', 23), 'saanvi.singh76@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-11-19', 23));
--INSERT INTO students VALUES (77, 'Anaya', 'Kumar', 'Male', CONVERT(DATE, '2001-11-08', 23), 'anaya.kumar77@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-07-14', 23));
--INSERT INTO students VALUES (78, 'Riya', 'Reddy', 'Male', CONVERT(DATE, '2003-06-24', 23), 'riya.reddy78@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-12-13', 23));
--INSERT INTO students VALUES (79, 'Tara', 'Verma', 'Male', CONVERT(DATE, '2000-08-19', 23), 'tara.verma79@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-03-27', 23));
--INSERT INTO students VALUES (80, 'Vivaan', 'Reddy', 'Male', CONVERT(DATE, '1996-07-04', 23), 'vivaan.reddy80@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-10-01', 23));
--INSERT INTO students VALUES (81, 'Aarav', 'Kumar', 'Male', CONVERT(DATE, '1998-08-13', 23), 'aarav.kumar81@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-04-13', 23));
--INSERT INTO students VALUES (82, 'Saanvi', 'Yadav', 'Female', CONVERT(DATE, '2000-01-18', 23), 'saanvi.yadav82@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-05-06', 23));
--INSERT INTO students VALUES (83, 'Diya', 'Chopra', 'Male', CONVERT(DATE, '2001-10-25', 23), 'diya.chopra83@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-10-31', 23));
--INSERT INTO students VALUES (84, 'Vivaan', 'Gupta', 'Male', CONVERT(DATE, '2005-01-02', 23), 'vivaan.gupta84@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-04-21', 23));
--INSERT INTO students VALUES (85, 'Riya', 'Sharma', 'Male', CONVERT(DATE, '2000-03-02', 23), 'riya.sharma85@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-05-10', 23));
--INSERT INTO students VALUES (86, 'Ishaan', 'Patel', 'Female', CONVERT(DATE, '1995-01-10', 23), 'ishaan.patel86@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-05-24', 23));
--INSERT INTO students VALUES (87, 'Anaya', 'Sharma', 'Female', CONVERT(DATE, '1998-09-15', 23), 'anaya.sharma87@example.com', 'Delhi', 'India', CONVERT(DATE, '2023-11-13', 23));
--INSERT INTO students VALUES (88, 'Aarav', 'Verma', 'Female', CONVERT(DATE, '1996-03-30', 23), 'aarav.verma88@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-03-15', 23));
--INSERT INTO students VALUES (89, 'Aarav', 'Patel', 'Male', CONVERT(DATE, '2005-12-11', 23), 'aarav.patel89@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-07-04', 23));
--INSERT INTO students VALUES (90, 'Ishaan', 'Singh', 'Female', CONVERT(DATE, '1999-08-06', 23), 'ishaan.singh90@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-07-13', 23));
--INSERT INTO students VALUES (91, 'Aarav', 'Kumar', 'Male', CONVERT(DATE, '2004-03-19', 23), 'aarav.kumar91@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-04-20', 23));
--INSERT INTO students VALUES (92, 'Riya', 'Gupta', 'Female', CONVERT(DATE, '1997-10-22', 23), 'riya.gupta92@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-12-09', 23));
--INSERT INTO students VALUES (93, 'Saanvi', 'Chopra', 'Male', CONVERT(DATE, '2003-08-18', 23), 'saanvi.chopra93@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-01-07', 23));
--INSERT INTO students VALUES (94, 'Aditya', 'Patel', 'Female', CONVERT(DATE, '2001-03-07', 23), 'aditya.patel94@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-12-02', 23));
--INSERT INTO students VALUES (95, 'Anaya', 'Nair', 'Female', CONVERT(DATE, '2001-03-27', 23), 'anaya.nair95@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-01-15', 23));
--INSERT INTO students VALUES (96, 'Vivaan', 'Nair', 'Female', CONVERT(DATE, '1997-03-11', 23), 'vivaan.nair96@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-11-30', 23));
--INSERT INTO students VALUES (97, 'Diya', 'Gupta', 'Female', CONVERT(DATE, '2003-04-04', 23), 'diya.gupta97@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2024-12-30', 23));
--INSERT INTO students VALUES (98, 'Tara', 'Kumar', 'Male', CONVERT(DATE, '1995-02-07', 23), 'tara.kumar98@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-07-05', 23));
--INSERT INTO students VALUES (99, 'Ishaan', 'Patel', 'Male', CONVERT(DATE, '2005-06-30', 23), 'ishaan.patel99@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-04-24', 23));
--INSERT INTO students VALUES (100, 'Aditya', 'Kumar', 'Male', CONVERT(DATE, '2001-06-17', 23), 'aditya.kumar100@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-09-30', 23));
--INSERT INTO students VALUES (101, 'Aarav', 'Sharma', 'Female', CONVERT(DATE, '2005-11-24', 23), 'aarav.sharma101@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-06-05', 23));
--INSERT INTO students VALUES (102, 'Anaya', 'Reddy', 'Female', CONVERT(DATE, '2005-12-19', 23), 'anaya.reddy102@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-08-19', 23));
--INSERT INTO students VALUES (103, 'Anaya', 'Sharma', 'Female', CONVERT(DATE, '2001-12-25', 23), 'anaya.sharma103@example.com', 'Pune', 'India', CONVERT(DATE, '2023-10-16', 23));
--INSERT INTO students VALUES (104, 'Anaya', 'Patel', 'Male', CONVERT(DATE, '1999-05-12', 23), 'anaya.patel104@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-10-02', 23));
--INSERT INTO students VALUES (105, 'Tara', 'Patel', 'Male', CONVERT(DATE, '1995-09-21', 23), 'tara.patel105@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-05-16', 23));
--INSERT INTO students VALUES (106, 'Ishaan', 'Nair', 'Male', CONVERT(DATE, '2005-09-09', 23), 'ishaan.nair106@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-02-28', 23));
--INSERT INTO students VALUES (107, 'Ishaan', 'Singh', 'Female', CONVERT(DATE, '2005-05-14', 23), 'ishaan.singh107@example.com', 'Delhi', 'India', CONVERT(DATE, '2023-07-05', 23));
--INSERT INTO students VALUES (108, 'Kabir', 'Sharma', 'Female', CONVERT(DATE, '2000-02-25', 23), 'kabir.sharma108@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-05-17', 23));
--INSERT INTO students VALUES (109, 'Diya', 'Reddy', 'Male', CONVERT(DATE, '1998-02-25', 23), 'diya.reddy109@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-02-10', 23));
--INSERT INTO students VALUES (110, 'Aarav', 'Sharma', 'Male', CONVERT(DATE, '2003-01-29', 23), 'aarav.sharma110@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-10-15', 23));
--INSERT INTO students VALUES (111, 'Aditya', 'Gupta', 'Female', CONVERT(DATE, '2000-01-25', 23), 'aditya.gupta111@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-01-13', 23));
--INSERT INTO students VALUES (112, 'Tara', 'Singh', 'Male', CONVERT(DATE, '2005-06-25', 23), 'tara.singh112@example.com', 'Pune', 'India', CONVERT(DATE, '2022-07-16', 23));
--INSERT INTO students VALUES (113, 'Kabir', 'Gupta', 'Male', CONVERT(DATE, '2004-08-12', 23), 'kabir.gupta113@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-02-01', 23));
--INSERT INTO students VALUES (114, 'Riya', 'Singh', 'Female', CONVERT(DATE, '1997-05-23', 23), 'riya.singh114@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-02-14', 23));
--INSERT INTO students VALUES (115, 'Kabir', 'Singh', 'Female', CONVERT(DATE, '1998-12-19', 23), 'kabir.singh115@example.com', 'Kolkata', 'India', CONVERT(DATE, '2022-08-22', 23));
--INSERT INTO students VALUES (116, 'Aditya', 'Verma', 'Male', CONVERT(DATE, '2004-09-19', 23), 'aditya.verma116@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-10-25', 23));
--INSERT INTO students VALUES (117, 'Ishaan', 'Nair', 'Male', CONVERT(DATE, '1997-11-09', 23), 'ishaan.nair117@example.com', 'Pune', 'India', CONVERT(DATE, '2024-06-01', 23));
--INSERT INTO students VALUES (118, 'Riya', 'Reddy', 'Female', CONVERT(DATE, '1998-04-23', 23), 'riya.reddy118@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-02-22', 23));
--INSERT INTO students VALUES (119, 'Saanvi', 'Sharma', 'Male', CONVERT(DATE, '1998-04-28', 23), 'saanvi.sharma119@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-11-19', 23));
--INSERT INTO students VALUES (120, 'Diya', 'Gupta', 'Male', CONVERT(DATE, '2002-01-06', 23), 'diya.gupta120@example.com', 'Pune', 'India', CONVERT(DATE, '2024-03-21', 23));
--INSERT INTO students VALUES (121, 'Aarav', 'Singh', 'Female', CONVERT(DATE, '1999-12-20', 23), 'aarav.singh121@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2024-10-17', 23));
--INSERT INTO students VALUES (122, 'Kabir', 'Chopra', 'Female', CONVERT(DATE, '1999-04-24', 23), 'kabir.chopra122@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-04-25', 23));
--INSERT INTO students VALUES (123, 'Kabir', 'Kumar', 'Male', CONVERT(DATE, '2002-08-08', 23), 'kabir.kumar123@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2022-11-11', 23));
--INSERT INTO students VALUES (124, 'Aarav', 'Verma', 'Female', CONVERT(DATE, '2000-02-25', 23), 'aarav.verma124@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-04-25', 23));
--INSERT INTO students VALUES (125, 'Tara', 'Sharma', 'Male', CONVERT(DATE, '2001-11-10', 23), 'tara.sharma125@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-08-03', 23));
--INSERT INTO students VALUES (126, 'Saanvi', 'Singh', 'Male', CONVERT(DATE, '1996-12-07', 23), 'saanvi.singh126@example.com', 'Kolkata', 'India', CONVERT(DATE, '2022-12-28', 23));
--INSERT INTO students VALUES (127, 'Ishaan', 'Chopra', 'Female', CONVERT(DATE, '1995-12-13', 23), 'ishaan.chopra127@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-05-11', 23));
--INSERT INTO students VALUES (128, 'Anaya', 'Singh', 'Female', CONVERT(DATE, '2002-12-07', 23), 'anaya.singh128@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-02-08', 23));
--INSERT INTO students VALUES (129, 'Saanvi', 'Singh', 'Male', CONVERT(DATE, '2003-01-16', 23), 'saanvi.singh129@example.com', 'Delhi', 'India', CONVERT(DATE, '2022-05-19', 23));
--INSERT INTO students VALUES (130, 'Saanvi', 'Chopra', 'Male', CONVERT(DATE, '1997-01-03', 23), 'saanvi.chopra130@example.com', 'Pune', 'India', CONVERT(DATE, '2023-10-20', 23));
--INSERT INTO students VALUES (131, 'Aarav', 'Sharma', 'Male', CONVERT(DATE, '2000-02-20', 23), 'aarav.sharma131@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-02-25', 23));
--INSERT INTO students VALUES (132, 'Ishaan', 'Reddy', 'Male', CONVERT(DATE, '2005-03-27', 23), 'ishaan.reddy132@example.com', 'Kolkata', 'India', CONVERT(DATE, '2022-03-28', 23));
--INSERT INTO students VALUES (133, 'Vivaan', 'Patel', 'Male', CONVERT(DATE, '1998-09-18', 23), 'vivaan.patel133@example.com', 'Pune', 'India', CONVERT(DATE, '2023-06-20', 23));
--INSERT INTO students VALUES (134, 'Saanvi', 'Reddy', 'Female', CONVERT(DATE, '1997-09-03', 23), 'saanvi.reddy134@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-11-05', 23));
--INSERT INTO students VALUES (135, 'Saanvi', 'Gupta', 'Female', CONVERT(DATE, '1998-05-12', 23), 'saanvi.gupta135@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-05-02', 23));
--INSERT INTO students VALUES (136, 'Anaya', 'Patel', 'Female', CONVERT(DATE, '2002-08-26', 23), 'anaya.patel136@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-09-19', 23));
--INSERT INTO students VALUES (137, 'Diya', 'Verma', 'Male', CONVERT(DATE, '2005-09-10', 23), 'diya.verma137@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-03-02', 23));
--INSERT INTO students VALUES (138, 'Diya', 'Nair', 'Male', CONVERT(DATE, '1996-01-08', 23), 'diya.nair138@example.com', 'Delhi', 'India', CONVERT(DATE, '2024-10-02', 23));
--INSERT INTO students VALUES (139, 'Aditya', 'Gupta', 'Female', CONVERT(DATE, '1995-04-13', 23), 'aditya.gupta139@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-03-15', 23));
--INSERT INTO students VALUES (140, 'Diya', 'Chopra', 'Female', CONVERT(DATE, '2004-12-08', 23), 'diya.chopra140@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-03-26', 23));
--INSERT INTO students VALUES (141, 'Kabir', 'Reddy', 'Male', CONVERT(DATE, '2000-03-10', 23), 'kabir.reddy141@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2022-02-02', 23));
--INSERT INTO students VALUES (142, 'Aditya', 'Sharma', 'Female', CONVERT(DATE, '2005-08-11', 23), 'aditya.sharma142@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2022-01-03', 23));
--INSERT INTO students VALUES (143, 'Kabir', 'Verma', 'Female', CONVERT(DATE, '1999-08-31', 23), 'kabir.verma143@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-07-22', 23));
--INSERT INTO students VALUES (144, 'Riya', 'Yadav', 'Male', CONVERT(DATE, '2002-05-02', 23), 'riya.yadav144@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-04-20', 23));
--INSERT INTO students VALUES (145, 'Aditya', 'Kumar', 'Male', CONVERT(DATE, '1996-01-17', 23), 'aditya.kumar145@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-12-30', 23));
--INSERT INTO students VALUES (146, 'Tara', 'Yadav', 'Female', CONVERT(DATE, '2004-06-06', 23), 'tara.yadav146@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-10-31', 23));
--INSERT INTO students VALUES (147, 'Aditya', 'Nair', 'Male', CONVERT(DATE, '1995-02-13', 23), 'aditya.nair147@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-06-19', 23));
--INSERT INTO students VALUES (148, 'Tara', 'Patel', 'Female', CONVERT(DATE, '2000-03-11', 23), 'tara.patel148@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-12-04', 23));
--INSERT INTO students VALUES (149, 'Diya', 'Yadav', 'Female', CONVERT(DATE, '1996-10-20', 23), 'diya.yadav149@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-01-18', 23));
--INSERT INTO students VALUES (150, 'Kabir', 'Kumar', 'Male', CONVERT(DATE, '2001-11-21', 23), 'kabir.kumar150@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-04-04', 23));
--INSERT INTO students VALUES (151, 'Anaya', 'Singh', 'Female', CONVERT(DATE, '1995-04-17', 23), 'anaya.singh151@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-09-01', 23));
--INSERT INTO students VALUES (152, 'Riya', 'Sharma', 'Female', CONVERT(DATE, '2005-09-10', 23), 'riya.sharma152@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-05-13', 23));
--INSERT INTO students VALUES (153, 'Diya', 'Verma', 'Male', CONVERT(DATE, '1998-01-23', 23), 'diya.verma153@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-08-11', 23));
--INSERT INTO students VALUES (154, 'Aarav', 'Nair', 'Female', CONVERT(DATE, '1998-10-29', 23), 'aarav.nair154@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-10-08', 23));
--INSERT INTO students VALUES (155, 'Tara', 'Singh', 'Male', CONVERT(DATE, '2005-12-29', 23), 'tara.singh155@example.com', 'Pune', 'India', CONVERT(DATE, '2023-08-14', 23));
--INSERT INTO students VALUES (156, 'Aarav', 'Kumar', 'Male', CONVERT(DATE, '1997-09-03', 23), 'aarav.kumar156@example.com', 'Delhi', 'India', CONVERT(DATE, '2024-12-03', 23));
--INSERT INTO students VALUES (157, 'Riya', 'Kumar', 'Male', CONVERT(DATE, '1995-11-19', 23), 'riya.kumar157@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-08-01', 23));
--INSERT INTO students VALUES (158, 'Ishaan', 'Patel', 'Female', CONVERT(DATE, '2005-02-17', 23), 'ishaan.patel158@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-08-14', 23));
--INSERT INTO students VALUES (159, 'Riya', 'Nair', 'Female', CONVERT(DATE, '2003-12-24', 23), 'riya.nair159@example.com', 'Pune', 'India', CONVERT(DATE, '2024-05-26', 23));
--INSERT INTO students VALUES (160, 'Tara', 'Nair', 'Male', CONVERT(DATE, '1998-05-28', 23), 'tara.nair160@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-03-24', 23));
--INSERT INTO students VALUES (161, 'Tara', 'Nair', 'Female', CONVERT(DATE, '1998-09-06', 23), 'tara.nair161@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-01-29', 23));
--INSERT INTO students VALUES (162, 'Riya', 'Sharma', 'Female', CONVERT(DATE, '2000-08-24', 23), 'riya.sharma162@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-01-10', 23));
--INSERT INTO students VALUES (163, 'Riya', 'Chopra', 'Male', CONVERT(DATE, '2004-08-26', 23), 'riya.chopra163@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-05-25', 23));
--INSERT INTO students VALUES (164, 'Vivaan', 'Verma', 'Female', CONVERT(DATE, '1996-07-27', 23), 'vivaan.verma164@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-08-21', 23));
--INSERT INTO students VALUES (165, 'Aditya', 'Kumar', 'Female', CONVERT(DATE, '1997-10-08', 23), 'aditya.kumar165@example.com', 'Mumbai', 'India', CONVERT(DATE, '2023-02-20', 23));
--INSERT INTO students VALUES (166, 'Saanvi', 'Singh', 'Female', CONVERT(DATE, '1995-07-15', 23), 'saanvi.singh166@example.com', 'Delhi', 'India', CONVERT(DATE, '2023-05-21', 23));
--INSERT INTO students VALUES (167, 'Aarav', 'Verma', 'Male', CONVERT(DATE, '1999-09-10', 23), 'aarav.verma167@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2024-10-15', 23));
--INSERT INTO students VALUES (168, 'Aarav', 'Singh', 'Female', CONVERT(DATE, '2001-09-04', 23), 'aarav.singh168@example.com', 'Pune', 'India', CONVERT(DATE, '2022-08-21', 23));
--INSERT INTO students VALUES (169, 'Kabir', 'Yadav', 'Female', CONVERT(DATE, '2000-08-28', 23), 'kabir.yadav169@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2022-10-29', 23));
--INSERT INTO students VALUES (170, 'Aditya', 'Verma', 'Male', CONVERT(DATE, '2003-08-02', 23), 'aditya.verma170@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-05-25', 23));
--INSERT INTO students VALUES (171, 'Tara', 'Singh', 'Female', CONVERT(DATE, '1999-07-13', 23), 'tara.singh171@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-05-22', 23));
--INSERT INTO students VALUES (172, 'Kabir', 'Yadav', 'Male', CONVERT(DATE, '1997-04-10', 23), 'kabir.yadav172@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-09-03', 23));
--INSERT INTO students VALUES (173, 'Kabir', 'Gupta', 'Female', CONVERT(DATE, '2004-07-20', 23), 'kabir.gupta173@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-09-29', 23));
--INSERT INTO students VALUES (174, 'Aarav', 'Verma', 'Female', CONVERT(DATE, '1996-06-14', 23), 'aarav.verma174@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-07-20', 23));
--INSERT INTO students VALUES (175, 'Ishaan', 'Chopra', 'Female', CONVERT(DATE, '1995-09-16', 23), 'ishaan.chopra175@example.com', 'Mumbai', 'India', CONVERT(DATE, '2023-02-15', 23));
--INSERT INTO students VALUES (176, 'Vivaan', 'Yadav', 'Male', CONVERT(DATE, '2004-10-26', 23), 'vivaan.yadav176@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-04-27', 23));
--INSERT INTO students VALUES (177, 'Vivaan', 'Reddy', 'Female', CONVERT(DATE, '2003-02-23', 23), 'vivaan.reddy177@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2024-04-25', 23));
--INSERT INTO students VALUES (178, 'Tara', 'Verma', 'Male', CONVERT(DATE, '2000-10-08', 23), 'tara.verma178@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2024-08-21', 23));
--INSERT INTO students VALUES (179, 'Aditya', 'Singh', 'Female', CONVERT(DATE, '2000-06-24', 23), 'aditya.singh179@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-07-02', 23));
--INSERT INTO students VALUES (180, 'Aditya', 'Yadav', 'Female', CONVERT(DATE, '2004-02-03', 23), 'aditya.yadav180@example.com', 'Kolkata', 'India', CONVERT(DATE, '2022-10-18', 23));
--INSERT INTO students VALUES (181, 'Anaya', 'Patel', 'Male', CONVERT(DATE, '1996-02-27', 23), 'anaya.patel181@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-01-05', 23));
--INSERT INTO students VALUES (182, 'Aarav', 'Sharma', 'Female', CONVERT(DATE, '2001-03-09', 23), 'aarav.sharma182@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-03-27', 23));
--INSERT INTO students VALUES (183, 'Tara', 'Nair', 'Male', CONVERT(DATE, '2005-07-04', 23), 'tara.nair183@example.com', 'Pune', 'India', CONVERT(DATE, '2023-12-18', 23));
--INSERT INTO students VALUES (184, 'Riya', 'Chopra', 'Female', CONVERT(DATE, '1997-10-05', 23), 'riya.chopra184@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-08-27', 23));
--INSERT INTO students VALUES (185, 'Riya', 'Patel', 'Female', CONVERT(DATE, '2004-11-27', 23), 'riya.patel185@example.com', 'Pune', 'India', CONVERT(DATE, '2024-02-20', 23));
--INSERT INTO students VALUES (186, 'Vivaan', 'Nair', 'Male', CONVERT(DATE, '2002-02-16', 23), 'vivaan.nair186@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-08-19', 23));
--INSERT INTO students VALUES (187, 'Aarav', 'Sharma', 'Female', CONVERT(DATE, '2002-08-30', 23), 'aarav.sharma187@example.com', 'Delhi', 'India', CONVERT(DATE, '2023-05-09', 23));
--INSERT INTO students VALUES (188, 'Tara', 'Chopra', 'Male', CONVERT(DATE, '1997-04-22', 23), 'tara.chopra188@example.com', 'Delhi', 'India', CONVERT(DATE, '2023-02-24', 23));
--INSERT INTO students VALUES (189, 'Kabir', 'Verma', 'Male', CONVERT(DATE, '1999-01-22', 23), 'kabir.verma189@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-01-25', 23));
--INSERT INTO students VALUES (190, 'Tara', 'Nair', 'Male', CONVERT(DATE, '1999-05-28', 23), 'tara.nair190@example.com', 'Mumbai', 'India', CONVERT(DATE, '2023-02-12', 23));
--INSERT INTO students VALUES (191, 'Anaya', 'Yadav', 'Male', CONVERT(DATE, '2002-01-18', 23), 'anaya.yadav191@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2024-09-13', 23));
--INSERT INTO students VALUES (192, 'Vivaan', 'Chopra', 'Female', CONVERT(DATE, '1997-03-02', 23), 'vivaan.chopra192@example.com', 'Delhi', 'India', CONVERT(DATE, '2022-04-25', 23));
--INSERT INTO students VALUES (193, 'Riya', 'Patel', 'Male', CONVERT(DATE, '2003-09-13', 23), 'riya.patel193@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-12-25', 23));
--INSERT INTO students VALUES (194, 'Saanvi', 'Nair', 'Male', CONVERT(DATE, '1995-07-25', 23), 'saanvi.nair194@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2024-12-12', 23));
--INSERT INTO students VALUES (195, 'Ishaan', 'Gupta', 'Female', CONVERT(DATE, '2001-08-29', 23), 'ishaan.gupta195@example.com', 'Delhi', 'India', CONVERT(DATE, '2023-07-22', 23));
--INSERT INTO students VALUES (196, 'Riya', 'Nair', 'Male', CONVERT(DATE, '2000-11-15', 23), 'riya.nair196@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-12-20', 23));
--INSERT INTO students VALUES (197, 'Kabir', 'Sharma', 'Male', CONVERT(DATE, '2001-10-10', 23), 'kabir.sharma197@example.com', 'Pune', 'India', CONVERT(DATE, '2024-01-08', 23));
--INSERT INTO students VALUES (198, 'Riya', 'Patel', 'Male', CONVERT(DATE, '1999-03-19', 23), 'riya.patel198@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-01-23', 23));
--INSERT INTO students VALUES (199, 'Riya', 'Yadav', 'Male', CONVERT(DATE, '2004-08-18', 23), 'riya.yadav199@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-10-27', 23));
--INSERT INTO students VALUES (200, 'Aarav', 'Kumar', 'Female', CONVERT(DATE, '2004-08-09', 23), 'aarav.kumar200@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-09-21', 23));
--INSERT INTO students VALUES (201, 'Aarav', 'Patel', 'Female', CONVERT(DATE, '1997-10-19', 23), 'aarav.patel201@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-11-30', 23));
--INSERT INTO students VALUES (202, 'Riya', 'Chopra', 'Female', CONVERT(DATE, '1997-03-14', 23), 'riya.chopra202@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-08-04', 23));
--INSERT INTO students VALUES (203, 'Aditya', 'Kumar', 'Male', CONVERT(DATE, '2000-04-28', 23), 'aditya.kumar203@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-02-05', 23));
--INSERT INTO students VALUES (204, 'Diya', 'Nair', 'Male', CONVERT(DATE, '2004-11-17', 23), 'diya.nair204@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-07-05', 23));
--INSERT INTO students VALUES (205, 'Saanvi', 'Chopra', 'Male', CONVERT(DATE, '1997-07-22', 23), 'saanvi.chopra205@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-07-27', 23));
--INSERT INTO students VALUES (206, 'Vivaan', 'Nair', 'Male', CONVERT(DATE, '2000-06-21', 23), 'vivaan.nair206@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-04-11', 23));
--INSERT INTO students VALUES (207, 'Aditya', 'Patel', 'Female', CONVERT(DATE, '1999-09-28', 23), 'aditya.patel207@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-09-08', 23));
--INSERT INTO students VALUES (208, 'Riya', 'Chopra', 'Female', CONVERT(DATE, '2001-01-10', 23), 'riya.chopra208@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-02-06', 23));
--INSERT INTO students VALUES (209, 'Tara', 'Gupta', 'Male', CONVERT(DATE, '2004-09-22', 23), 'tara.gupta209@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-12-27', 23));
--INSERT INTO students VALUES (210, 'Ishaan', 'Sharma', 'Female', CONVERT(DATE, '1997-07-21', 23), 'ishaan.sharma210@example.com', 'Mumbai', 'India', CONVERT(DATE, '2023-01-21', 23));
--INSERT INTO students VALUES (211, 'Aarav', 'Kumar', 'Male', CONVERT(DATE, '1999-03-30', 23), 'aarav.kumar211@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-07-20', 23));
--INSERT INTO students VALUES (212, 'Vivaan', 'Sharma', 'Female', CONVERT(DATE, '1999-10-15', 23), 'vivaan.sharma212@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-12-31', 23));
--INSERT INTO students VALUES (213, 'Anaya', 'Kumar', 'Female', CONVERT(DATE, '2005-08-14', 23), 'anaya.kumar213@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2024-03-31', 23));
--INSERT INTO students VALUES (214, 'Vivaan', 'Kumar', 'Male', CONVERT(DATE, '2000-10-28', 23), 'vivaan.kumar214@example.com', 'Delhi', 'India', CONVERT(DATE, '2022-09-05', 23));
--INSERT INTO students VALUES (215, 'Tara', 'Verma', 'Female', CONVERT(DATE, '1996-04-14', 23), 'tara.verma215@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2022-10-02', 23));
--INSERT INTO students VALUES (216, 'Diya', 'Yadav', 'Female', CONVERT(DATE, '2004-03-02', 23), 'diya.yadav216@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-02-14', 23));
--INSERT INTO students VALUES (217, 'Aditya', 'Kumar', 'Female', CONVERT(DATE, '1995-11-14', 23), 'aditya.kumar217@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-03-30', 23));
--INSERT INTO students VALUES (218, 'Vivaan', 'Reddy', 'Male', CONVERT(DATE, '1995-01-13', 23), 'vivaan.reddy218@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-11-04', 23));
--INSERT INTO students VALUES (219, 'Diya', 'Gupta', 'Male', CONVERT(DATE, '1999-09-25', 23), 'diya.gupta219@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-11-05', 23));
--INSERT INTO students VALUES (220, 'Tara', 'Nair', 'Male', CONVERT(DATE, '1996-06-15', 23), 'tara.nair220@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-03-10', 23));
--INSERT INTO students VALUES (221, 'Aarav', 'Chopra', 'Female', CONVERT(DATE, '2000-05-26', 23), 'aarav.chopra221@example.com', 'Pune', 'India', CONVERT(DATE, '2024-12-19', 23));
--INSERT INTO students VALUES (222, 'Vivaan', 'Patel', 'Male', CONVERT(DATE, '1996-06-20', 23), 'vivaan.patel222@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-01-28', 23));
--INSERT INTO students VALUES (223, 'Ishaan', 'Gupta', 'Female', CONVERT(DATE, '1996-07-25', 23), 'ishaan.gupta223@example.com', 'Pune', 'India', CONVERT(DATE, '2024-12-29', 23));
--INSERT INTO students VALUES (224, 'Saanvi', 'Yadav', 'Female', CONVERT(DATE, '1996-11-24', 23), 'saanvi.yadav224@example.com', 'Kolkata', 'India', CONVERT(DATE, '2022-06-25', 23));
--INSERT INTO students VALUES (225, 'Aarav', 'Reddy', 'Female', CONVERT(DATE, '1996-05-12', 23), 'aarav.reddy225@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2022-05-14', 23));
--INSERT INTO students VALUES (226, 'Ishaan', 'Reddy', 'Male', CONVERT(DATE, '2001-01-02', 23), 'ishaan.reddy226@example.com', 'Delhi', 'India', CONVERT(DATE, '2024-12-08', 23));
--INSERT INTO students VALUES (227, 'Ishaan', 'Singh', 'Male', CONVERT(DATE, '2005-03-23', 23), 'ishaan.singh227@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-09-11', 23));
--INSERT INTO students VALUES (228, 'Ishaan', 'Kumar', 'Female', CONVERT(DATE, '1997-12-14', 23), 'ishaan.kumar228@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-08-29', 23));
--INSERT INTO students VALUES (229, 'Riya', 'Kumar', 'Male', CONVERT(DATE, '1996-03-31', 23), 'riya.kumar229@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2022-04-05', 23));
--INSERT INTO students VALUES (230, 'Aarav', 'Kumar', 'Female', CONVERT(DATE, '2003-12-04', 23), 'aarav.kumar230@example.com', 'Pune', 'India', CONVERT(DATE, '2023-03-25', 23));
--INSERT INTO students VALUES (231, 'Vivaan', 'Yadav', 'Male', CONVERT(DATE, '1995-07-13', 23), 'vivaan.yadav231@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-06-04', 23));
--INSERT INTO students VALUES (232, 'Ishaan', 'Verma', 'Female', CONVERT(DATE, '2003-09-13', 23), 'ishaan.verma232@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2024-11-25', 23));
--INSERT INTO students VALUES (233, 'Aditya', 'Chopra', 'Male', CONVERT(DATE, '1996-03-05', 23), 'aditya.chopra233@example.com', 'Delhi', 'India', CONVERT(DATE, '2023-03-03', 23));
--INSERT INTO students VALUES (234, 'Riya', 'Chopra', 'Male', CONVERT(DATE, '1995-10-20', 23), 'riya.chopra234@example.com', 'Delhi', 'India', CONVERT(DATE, '2022-07-31', 23));
--INSERT INTO students VALUES (235, 'Riya', 'Sharma', 'Female', CONVERT(DATE, '1995-05-18', 23), 'riya.sharma235@example.com', 'Delhi', 'India', CONVERT(DATE, '2022-03-22', 23));
--INSERT INTO students VALUES (236, 'Vivaan', 'Sharma', 'Male', CONVERT(DATE, '2001-04-14', 23), 'vivaan.sharma236@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-02-04', 23));
--INSERT INTO students VALUES (237, 'Anaya', 'Patel', 'Female', CONVERT(DATE, '2000-11-14', 23), 'anaya.patel237@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-10-27', 23));
--INSERT INTO students VALUES (238, 'Aarav', 'Kumar', 'Female', CONVERT(DATE, '1995-03-13', 23), 'aarav.kumar238@example.com', 'Delhi', 'India', CONVERT(DATE, '2024-02-20', 23));
--INSERT INTO students VALUES (239, 'Aarav', 'Patel', 'Female', CONVERT(DATE, '1995-07-17', 23), 'aarav.patel239@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-09-22', 23));
--INSERT INTO students VALUES (240, 'Anaya', 'Singh', 'Female', CONVERT(DATE, '1999-08-05', 23), 'anaya.singh240@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-09-21', 23));
--INSERT INTO students VALUES (241, 'Diya', 'Patel', 'Female', CONVERT(DATE, '2005-08-03', 23), 'diya.patel241@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-04-17', 23));
--INSERT INTO students VALUES (242, 'Tara', 'Sharma', 'Female', CONVERT(DATE, '2004-03-18', 23), 'tara.sharma242@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-09-21', 23));
--INSERT INTO students VALUES (243, 'Anaya', 'Reddy', 'Female', CONVERT(DATE, '1995-07-19', 23), 'anaya.reddy243@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-08-24', 23));
--INSERT INTO students VALUES (244, 'Aditya', 'Sharma', 'Male', CONVERT(DATE, '2005-01-06', 23), 'aditya.sharma244@example.com', 'Delhi', 'India', CONVERT(DATE, '2022-10-30', 23));
--INSERT INTO students VALUES (245, 'Saanvi', 'Singh', 'Male', CONVERT(DATE, '2004-11-23', 23), 'saanvi.singh245@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-10-23', 23));
--INSERT INTO students VALUES (246, 'Saanvi', 'Patel', 'Male', CONVERT(DATE, '2003-05-28', 23), 'saanvi.patel246@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-01-20', 23));
--INSERT INTO students VALUES (247, 'Kabir', 'Kumar', 'Male', CONVERT(DATE, '1997-05-13', 23), 'kabir.kumar247@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-07-28', 23));
--INSERT INTO students VALUES (248, 'Tara', 'Verma', 'Male', CONVERT(DATE, '2002-10-03', 23), 'tara.verma248@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2024-11-24', 23));
--INSERT INTO students VALUES (249, 'Tara', 'Patel', 'Male', CONVERT(DATE, '2000-07-28', 23), 'tara.patel249@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-04-07', 23));
--INSERT INTO students VALUES (250, 'Tara', 'Yadav', 'Male', CONVERT(DATE, '2004-05-28', 23), 'tara.yadav250@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-02-26', 23));
--INSERT INTO students VALUES (251, 'Riya', 'Gupta', 'Female', CONVERT(DATE, '2003-11-11', 23), 'riya.gupta251@example.com', 'Delhi', 'India', CONVERT(DATE, '2023-01-17', 23));
--INSERT INTO students VALUES (252, 'Saanvi', 'Gupta', 'Male', CONVERT(DATE, '1997-01-27', 23), 'saanvi.gupta252@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-12-03', 23));
--INSERT INTO students VALUES (253, 'Ishaan', 'Verma', 'Female', CONVERT(DATE, '1996-04-24', 23), 'ishaan.verma253@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-11-09', 23));
--INSERT INTO students VALUES (254, 'Aarav', 'Sharma', 'Female', CONVERT(DATE, '1996-07-23', 23), 'aarav.sharma254@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2022-01-16', 23));
--INSERT INTO students VALUES (255, 'Anaya', 'Nair', 'Male', CONVERT(DATE, '2002-04-29', 23), 'anaya.nair255@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-08-01', 23));
--INSERT INTO students VALUES (256, 'Kabir', 'Sharma', 'Male', CONVERT(DATE, '1995-10-09', 23), 'kabir.sharma256@example.com', 'Pune', 'India', CONVERT(DATE, '2024-01-14', 23));
--INSERT INTO students VALUES (257, 'Vivaan', 'Reddy', 'Male', CONVERT(DATE, '2004-02-05', 23), 'vivaan.reddy257@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-02-09', 23));
--INSERT INTO students VALUES (258, 'Ishaan', 'Patel', 'Female', CONVERT(DATE, '2000-09-19', 23), 'ishaan.patel258@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-07-14', 23));
--INSERT INTO students VALUES (259, 'Riya', 'Kumar', 'Female', CONVERT(DATE, '1998-09-08', 23), 'riya.kumar259@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-04-17', 23));
--INSERT INTO students VALUES (260, 'Diya', 'Reddy', 'Male', CONVERT(DATE, '1996-01-23', 23), 'diya.reddy260@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-03-18', 23));
--INSERT INTO students VALUES (261, 'Ishaan', 'Yadav', 'Male', CONVERT(DATE, '2005-05-23', 23), 'ishaan.yadav261@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2023-03-29', 23));
--INSERT INTO students VALUES (262, 'Aditya', 'Sharma', 'Female', CONVERT(DATE, '2000-11-20', 23), 'aditya.sharma262@example.com', 'Delhi', 'India', CONVERT(DATE, '2024-10-01', 23));
--INSERT INTO students VALUES (263, 'Ishaan', 'Sharma', 'Male', CONVERT(DATE, '1998-09-10', 23), 'ishaan.sharma263@example.com', 'Pune', 'India', CONVERT(DATE, '2022-05-14', 23));
--INSERT INTO students VALUES (264, 'Kabir', 'Kumar', 'Female', CONVERT(DATE, '2002-03-23', 23), 'kabir.kumar264@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2024-05-23', 23));
--INSERT INTO students VALUES (265, 'Diya', 'Chopra', 'Female', CONVERT(DATE, '2001-06-20', 23), 'diya.chopra265@example.com', 'Pune', 'India', CONVERT(DATE, '2024-08-26', 23));
--INSERT INTO students VALUES (266, 'Anaya', 'Sharma', 'Female', CONVERT(DATE, '1996-01-21', 23), 'anaya.sharma266@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-05-05', 23));
--INSERT INTO students VALUES (267, 'Aditya', 'Patel', 'Female', CONVERT(DATE, '2003-08-17', 23), 'aditya.patel267@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-04-20', 23));
--INSERT INTO students VALUES (268, 'Aditya', 'Nair', 'Female', CONVERT(DATE, '1998-12-25', 23), 'aditya.nair268@example.com', 'Kolkata', 'India', CONVERT(DATE, '2022-04-05', 23));
--INSERT INTO students VALUES (269, 'Anaya', 'Reddy', 'Male', CONVERT(DATE, '2004-04-29', 23), 'anaya.reddy269@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-08-28', 23));
--INSERT INTO students VALUES (270, 'Kabir', 'Reddy', 'Male', CONVERT(DATE, '1995-01-25', 23), 'kabir.reddy270@example.com', 'Pune', 'India', CONVERT(DATE, '2022-12-25', 23));
--INSERT INTO students VALUES (271, 'Aditya', 'Yadav', 'Female', CONVERT(DATE, '2000-03-18', 23), 'aditya.yadav271@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-03-26', 23));
--INSERT INTO students VALUES (272, 'Tara', 'Sharma', 'Male', CONVERT(DATE, '2000-09-14', 23), 'tara.sharma272@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-04-19', 23));
--INSERT INTO students VALUES (273, 'Aditya', 'Singh', 'Female', CONVERT(DATE, '1999-03-16', 23), 'aditya.singh273@example.com', 'Mumbai', 'India', CONVERT(DATE, '2023-05-12', 23));
--INSERT INTO students VALUES (274, 'Riya', 'Sharma', 'Male', CONVERT(DATE, '2005-03-29', 23), 'riya.sharma274@example.com', 'Hyderabad', 'India', CONVERT(DATE, '2023-10-29', 23));
--INSERT INTO students VALUES (275, 'Ishaan', 'Yadav', 'Female', CONVERT(DATE, '1997-12-12', 23), 'ishaan.yadav275@example.com', 'Pune', 'India', CONVERT(DATE, '2024-12-01', 23));
--INSERT INTO students VALUES (276, 'Vivaan', 'Gupta', 'Male', CONVERT(DATE, '2000-03-30', 23), 'vivaan.gupta276@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-08-12', 23));
--INSERT INTO students VALUES (277, 'Diya', 'Patel', 'Male', CONVERT(DATE, '2001-08-09', 23), 'diya.patel277@example.com', 'Pune', 'India', CONVERT(DATE, '2024-04-14', 23));
--INSERT INTO students VALUES (278, 'Kabir', 'Yadav', 'Female', CONVERT(DATE, '2002-02-20', 23), 'kabir.yadav278@example.com', 'Ahmedabad', 'India', CONVERT(DATE, '2023-11-06', 23));
--INSERT INTO students VALUES (279, 'Ishaan', 'Verma', 'Male', CONVERT(DATE, '2000-12-02', 23), 'ishaan.verma279@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-01-04', 23));
--INSERT INTO students VALUES (280, 'Anaya', 'Patel', 'Male', CONVERT(DATE, '2003-04-08', 23), 'anaya.patel280@example.com', 'Delhi', 'India', CONVERT(DATE, '2022-08-28', 23));
--INSERT INTO students VALUES (281, 'Anaya', 'Kumar', 'Male', CONVERT(DATE, '2004-08-28', 23), 'anaya.kumar281@example.com', 'Mumbai', 'India', CONVERT(DATE, '2024-08-19', 23));
--INSERT INTO students VALUES (282, 'Tara', 'Gupta', 'Female', CONVERT(DATE, '1996-01-16', 23), 'tara.gupta282@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-06-14', 23));
--INSERT INTO students VALUES (283, 'Saanvi', 'Gupta', 'Female', CONVERT(DATE, '2000-10-15', 23), 'saanvi.gupta283@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-12-02', 23));
--INSERT INTO students VALUES (284, 'Aditya', 'Kumar', 'Female', CONVERT(DATE, '1995-04-27', 23), 'aditya.kumar284@example.com', 'Delhi', 'India', CONVERT(DATE, '2023-07-27', 23));
--INSERT INTO students VALUES (285, 'Anaya', 'Yadav', 'Male', CONVERT(DATE, '2005-06-08', 23), 'anaya.yadav285@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-04-27', 23));
--INSERT INTO students VALUES (286, 'Anaya', 'Patel', 'Male', CONVERT(DATE, '2004-11-04', 23), 'anaya.patel286@example.com', 'Pune', 'India', CONVERT(DATE, '2023-08-30', 23));
--INSERT INTO students VALUES (287, 'Diya', 'Verma', 'Male', CONVERT(DATE, '1998-09-07', 23), 'diya.verma287@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-10-27', 23));
--INSERT INTO students VALUES (288, 'Riya', 'Verma', 'Male', CONVERT(DATE, '2000-12-18', 23), 'riya.verma288@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-02-08', 23));
--INSERT INTO students VALUES (289, 'Kabir', 'Chopra', 'Female', CONVERT(DATE, '1997-01-09', 23), 'kabir.chopra289@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-03-23', 23));
--INSERT INTO students VALUES (290, 'Anaya', 'Verma', 'Female', CONVERT(DATE, '2000-02-07', 23), 'anaya.verma290@example.com', 'Mumbai', 'India', CONVERT(DATE, '2022-05-27', 23));
--INSERT INTO students VALUES (291, 'Aditya', 'Chopra', 'Female', CONVERT(DATE, '2001-07-14', 23), 'aditya.chopra291@example.com', 'Chennai', 'India', CONVERT(DATE, '2023-11-01', 23));
--INSERT INTO students VALUES (292, 'Tara', 'Kumar', 'Male', CONVERT(DATE, '2003-07-24', 23), 'tara.kumar292@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-12-08', 23));
--INSERT INTO students VALUES (293, 'Ishaan', 'Singh', 'Female', CONVERT(DATE, '1995-08-04', 23), 'ishaan.singh293@example.com', 'Chennai', 'India', CONVERT(DATE, '2022-10-08', 23));
--INSERT INTO students VALUES (294, 'Tara', 'Singh', 'Male', CONVERT(DATE, '1995-11-02', 23), 'tara.singh294@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-05-17', 23));
--INSERT INTO students VALUES (295, 'Riya', 'Nair', 'Male', CONVERT(DATE, '2003-10-19', 23), 'riya.nair295@example.com', 'Pune', 'India', CONVERT(DATE, '2023-11-21', 23));
--INSERT INTO students VALUES (296, 'Saanvi', 'Chopra', 'Female', CONVERT(DATE, '2001-05-13', 23), 'saanvi.chopra296@example.com', 'Bengaluru', 'India', CONVERT(DATE, '2022-08-05', 23));
--INSERT INTO students VALUES (297, 'Diya', 'Yadav', 'Male', CONVERT(DATE, '2001-11-02', 23), 'diya.yadav297@example.com', 'Chennai', 'India', CONVERT(DATE, '2024-06-04', 23));
--INSERT INTO students VALUES (298, 'Diya', 'Reddy', 'Female', CONVERT(DATE, '2004-04-11', 23), 'diya.reddy298@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-10-17', 23));
--INSERT INTO students VALUES (299, 'Aditya', 'Sharma', 'Female', CONVERT(DATE, '2005-09-06', 23), 'aditya.sharma299@example.com', 'Kolkata', 'India', CONVERT(DATE, '2023-05-09', 23));
--INSERT INTO students VALUES (300, 'Aditya', 'Patel', 'Female', CONVERT(DATE, '2000-08-29', 23), 'aditya.patel300@example.com', 'Kolkata', 'India', CONVERT(DATE, '2024-06-19', 23));

---- Insert Courses
--INSERT INTO courses VALUES (1, 'Machine Learning Masterclass 1', 'Python', 'Priya Singh', 'Advanced', 4470.02, CONVERT(DATE, '2024-09-16', 23));
--INSERT INTO courses VALUES (2, 'Data Science Masterclass 2', 'Web Development', 'Neha Sharma', 'Intermediate', 1044.19, CONVERT(DATE, '2024-08-23', 23));
--INSERT INTO courses VALUES (3, 'Cybersecurity Masterclass 3', 'Machine Learning', 'Priya Singh', 'Advanced', 2430.65, CONVERT(DATE, '2024-07-01', 23));
--INSERT INTO courses VALUES (4, 'Python Masterclass 4', 'Cybersecurity', 'Amit Kumar', 'Intermediate', 2943.49, CONVERT(DATE, '2024-05-18', 23));
--INSERT INTO courses VALUES (5, 'Web Development Masterclass 5', 'Web Development', 'Sneha Patel', 'Beginner', 2262.36, CONVERT(DATE, '2023-06-03', 23));
--INSERT INTO courses VALUES (6, 'Machine Learning Masterclass 6', 'AI', 'Rahul Verma', 'Intermediate', 1132.51, CONVERT(DATE, '2024-01-07', 23));
--INSERT INTO courses VALUES (7, 'SQL Masterclass 7', 'Web Development', 'Priya Singh', 'Advanced', 1001.73, CONVERT(DATE, '2024-03-19', 23));
--INSERT INTO courses VALUES (8, 'Web Development Masterclass 8', 'Cybersecurity', 'Priya Singh', 'Advanced', 1290.66, CONVERT(DATE, '2022-02-03', 23));
--INSERT INTO courses VALUES (9, 'AI Masterclass 9', 'Python', 'Rahul Verma', 'Intermediate', 2031.29, CONVERT(DATE, '2023-05-16', 23));
--INSERT INTO courses VALUES (10, 'SQL Masterclass 10', 'Python', 'Priya Singh', 'Beginner', 3530.26, CONVERT(DATE, '2024-07-26', 23));
--INSERT INTO courses VALUES (11, 'AI Masterclass 11', 'AI', 'John Doe', 'Intermediate', 4483.77, CONVERT(DATE, '2023-05-28', 23));
--INSERT INTO courses VALUES (12, 'Data Science Masterclass 12', 'Python', 'Amit Kumar', 'Beginner', 4244.14, CONVERT(DATE, '2023-03-29', 23));
--INSERT INTO courses VALUES (13, 'Machine Learning Masterclass 13', 'Python', 'Rahul Verma', 'Beginner', 1618.36, CONVERT(DATE, '2023-06-16', 23));
--INSERT INTO courses VALUES (14, 'Cybersecurity Masterclass 14', 'Python', 'Priya Singh', 'Intermediate', 1402.13, CONVERT(DATE, '2023-02-15', 23));
--INSERT INTO courses VALUES (15, 'Cybersecurity Masterclass 15', 'Web Development', 'Priya Singh', 'Beginner', 3343.79, CONVERT(DATE, '2022-04-28', 23));
--INSERT INTO courses VALUES (16, 'Web Development Masterclass 16', 'Data Science', 'Rahul Verma', 'Beginner', 2467.38, CONVERT(DATE, '2022-03-16', 23));
--INSERT INTO courses VALUES (17, 'AI Masterclass 17', 'SQL', 'John Doe', 'Beginner', 700.84, CONVERT(DATE, '2024-01-18', 23));
--INSERT INTO courses VALUES (18, 'Machine Learning Masterclass 18', 'Web Development', 'Sneha Patel', 'Beginner', 2540.82, CONVERT(DATE, '2024-01-04', 23));
--INSERT INTO courses VALUES (19, 'Python Masterclass 19', 'Machine Learning', 'Rahul Verma', 'Advanced', 4470.81, CONVERT(DATE, '2024-01-08', 23));
--INSERT INTO courses VALUES (20, 'Machine Learning Masterclass 20', 'Cybersecurity', 'David Johnson', 'Intermediate', 3084.29, CONVERT(DATE, '2023-06-11', 23));

---- Insert Enrollments
--INSERT INTO enrollments VALUES (1, 117, 5, CONVERT(DATE, '2022-02-08', 23), 97.51, 'Active', NULL);
--INSERT INTO enrollments VALUES (2, 147, 20, CONVERT(DATE, '2024-01-03', 23), 44.88, 'Completed', 4.4);
--INSERT INTO enrollments VALUES (3, 211, 4, CONVERT(DATE, '2022-10-15', 23), 52.4, 'Active', NULL);
--INSERT INTO enrollments VALUES (4, 128, 12, CONVERT(DATE, '2023-04-04', 23), 22.12, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (5, 112, 1, CONVERT(DATE, '2024-01-23', 23), 79.93, 'Completed', 2.1);
--INSERT INTO enrollments VALUES (6, 289, 1, CONVERT(DATE, '2023-08-13', 23), 6.45, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (7, 295, 4, CONVERT(DATE, '2024-08-13', 23), 77.82, 'Active', NULL);
--INSERT INTO enrollments VALUES (8, 235, 6, CONVERT(DATE, '2022-11-19', 23), 54.25, 'Active', NULL);
--INSERT INTO enrollments VALUES (9, 19, 13, CONVERT(DATE, '2022-12-11', 23), 47.65, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (10, 66, 1, CONVERT(DATE, '2024-11-13', 23), 55.28, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (11, 43, 7, CONVERT(DATE, '2023-02-25', 23), 11.91, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (12, 237, 17, CONVERT(DATE, '2023-05-25', 23), 40.52, 'Active', NULL);
--INSERT INTO enrollments VALUES (13, 127, 9, CONVERT(DATE, '2023-03-23', 23), 14.23, 'Active', NULL);
--INSERT INTO enrollments VALUES (14, 159, 9, CONVERT(DATE, '2022-02-28', 23), 8.94, 'Active', NULL);
--INSERT INTO enrollments VALUES (15, 228, 12, CONVERT(DATE, '2024-03-06', 23), 22.22, 'Completed', 4.9);
--INSERT INTO enrollments VALUES (16, 1, 4, CONVERT(DATE, '2024-07-16', 23), 45.04, 'Completed', 1.2);
--INSERT INTO enrollments VALUES (17, 240, 9, CONVERT(DATE, '2023-02-23', 23), 85.58, 'Active', NULL);
--INSERT INTO enrollments VALUES (18, 36, 5, CONVERT(DATE, '2024-02-20', 23), 12.34, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (19, 12, 16, CONVERT(DATE, '2024-02-09', 23), 8.34, 'Completed', 4.2);
--INSERT INTO enrollments VALUES (20, 51, 19, CONVERT(DATE, '2024-05-31', 23), 75.37, 'Active', NULL);
--INSERT INTO enrollments VALUES (21, 46, 1, CONVERT(DATE, '2023-10-30', 23), 7.49, 'Completed', 4.2);
--INSERT INTO enrollments VALUES (22, 210, 12, CONVERT(DATE, '2024-12-27', 23), 15.46, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (23, 200, 9, CONVERT(DATE, '2024-07-05', 23), 40.86, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (24, 208, 7, CONVERT(DATE, '2023-09-23', 23), 84.3, 'Completed', 4.8);
--INSERT INTO enrollments VALUES (25, 270, 7, CONVERT(DATE, '2024-05-23', 23), 76.16, 'Completed', 1.5);
--INSERT INTO enrollments VALUES (26, 279, 12, CONVERT(DATE, '2023-03-02', 23), 88.54, 'Active', NULL);
--INSERT INTO enrollments VALUES (27, 271, 16, CONVERT(DATE, '2024-11-16', 23), 87.86, 'Active', NULL);
--INSERT INTO enrollments VALUES (28, 117, 10, CONVERT(DATE, '2022-01-21', 23), 43.76, 'Active', NULL);
--INSERT INTO enrollments VALUES (29, 259, 11, CONVERT(DATE, '2022-04-11', 23), 33.41, 'Completed', 4.6);
--INSERT INTO enrollments VALUES (30, 155, 6, CONVERT(DATE, '2022-07-12', 23), 7.56, 'Active', NULL);
--INSERT INTO enrollments VALUES (31, 229, 8, CONVERT(DATE, '2022-05-16', 23), 88.74, 'Completed', 4.0);
--INSERT INTO enrollments VALUES (32, 3, 16, CONVERT(DATE, '2022-09-06', 23), 54.48, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (33, 63, 20, CONVERT(DATE, '2022-07-20', 23), 38.76, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (34, 13, 8, CONVERT(DATE, '2022-08-31', 23), 30.55, 'Completed', 1.8);
--INSERT INTO enrollments VALUES (35, 27, 9, CONVERT(DATE, '2022-09-14', 23), 57.85, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (36, 214, 13, CONVERT(DATE, '2023-04-03', 23), 24.2, 'Completed', 3.0);
--INSERT INTO enrollments VALUES (37, 83, 8, CONVERT(DATE, '2023-12-28', 23), 79.87, 'Completed', 4.5);
--INSERT INTO enrollments VALUES (38, 247, 17, CONVERT(DATE, '2024-11-16', 23), 62.91, 'Completed', 5.0);
--INSERT INTO enrollments VALUES (39, 207, 1, CONVERT(DATE, '2022-12-06', 23), 1.09, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (40, 168, 5, CONVERT(DATE, '2022-10-17', 23), 84.68, 'Active', NULL);
--INSERT INTO enrollments VALUES (41, 42, 7, CONVERT(DATE, '2023-08-06', 23), 65.68, 'Active', NULL);
--INSERT INTO enrollments VALUES (42, 191, 8, CONVERT(DATE, '2023-12-02', 23), 67.51, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (43, 138, 17, CONVERT(DATE, '2022-08-02', 23), 76.4, 'Completed', 3.8);
--INSERT INTO enrollments VALUES (44, 101, 11, CONVERT(DATE, '2022-09-06', 23), 96.79, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (45, 240, 10, CONVERT(DATE, '2022-07-15', 23), 63.49, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (46, 65, 20, CONVERT(DATE, '2022-05-10', 23), 40.87, 'Active', NULL);
--INSERT INTO enrollments VALUES (47, 120, 5, CONVERT(DATE, '2024-05-06', 23), 33.02, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (48, 131, 6, CONVERT(DATE, '2023-07-14', 23), 92.48, 'Active', NULL);
--INSERT INTO enrollments VALUES (49, 274, 13, CONVERT(DATE, '2024-02-11', 23), 38.94, 'Completed', 1.4);
--INSERT INTO enrollments VALUES (50, 57, 20, CONVERT(DATE, '2023-02-13', 23), 76.95, 'Active', NULL);
--INSERT INTO enrollments VALUES (51, 12, 12, CONVERT(DATE, '2023-01-07', 23), 8.28, 'Completed', 3.7);
--INSERT INTO enrollments VALUES (52, 64, 11, CONVERT(DATE, '2023-04-29', 23), 47.37, 'Active', NULL);
--INSERT INTO enrollments VALUES (53, 11, 11, CONVERT(DATE, '2023-06-09', 23), 4.94, 'Completed', 3.9);
--INSERT INTO enrollments VALUES (54, 175, 14, CONVERT(DATE, '2022-02-03', 23), 53.79, 'Active', NULL);
--INSERT INTO enrollments VALUES (55, 229, 20, CONVERT(DATE, '2022-01-28', 23), 28.05, 'Active', NULL);
--INSERT INTO enrollments VALUES (56, 251, 9, CONVERT(DATE, '2024-02-28', 23), 89.42, 'Completed', 3.6);
--INSERT INTO enrollments VALUES (57, 108, 2, CONVERT(DATE, '2023-10-15', 23), 89.22, 'Completed', 1.0);
--INSERT INTO enrollments VALUES (58, 253, 18, CONVERT(DATE, '2022-11-29', 23), 73.24, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (59, 249, 16, CONVERT(DATE, '2024-06-09', 23), 75.37, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (60, 280, 17, CONVERT(DATE, '2022-06-11', 23), 33.39, 'Active', NULL);
--INSERT INTO enrollments VALUES (61, 20, 11, CONVERT(DATE, '2024-01-23', 23), 63.1, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (62, 78, 4, CONVERT(DATE, '2023-10-15', 23), 65.45, 'Active', NULL);
--INSERT INTO enrollments VALUES (63, 212, 19, CONVERT(DATE, '2022-03-18', 23), 64.62, 'Active', NULL);
--INSERT INTO enrollments VALUES (64, 44, 9, CONVERT(DATE, '2024-04-18', 23), 3.67, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (65, 47, 9, CONVERT(DATE, '2022-04-06', 23), 43.68, 'Completed', 3.9);
--INSERT INTO enrollments VALUES (66, 138, 17, CONVERT(DATE, '2022-07-28', 23), 44.13, 'Active', NULL);
--INSERT INTO enrollments VALUES (67, 150, 13, CONVERT(DATE, '2023-02-12', 23), 77.01, 'Active', NULL);
--INSERT INTO enrollments VALUES (68, 31, 4, CONVERT(DATE, '2023-04-26', 23), 42.88, 'Active', NULL);
--INSERT INTO enrollments VALUES (69, 239, 2, CONVERT(DATE, '2022-01-24', 23), 4.81, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (70, 171, 2, CONVERT(DATE, '2024-04-07', 23), 83.7, 'Completed', 3.9);
--INSERT INTO enrollments VALUES (71, 243, 13, CONVERT(DATE, '2024-10-23', 23), 5.49, 'Active', NULL);
--INSERT INTO enrollments VALUES (72, 98, 6, CONVERT(DATE, '2023-09-22', 23), 57.54, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (73, 95, 17, CONVERT(DATE, '2024-03-19', 23), 86.69, 'Active', NULL);
--INSERT INTO enrollments VALUES (74, 105, 12, CONVERT(DATE, '2022-01-13', 23), 44.33, 'Active', NULL);
--INSERT INTO enrollments VALUES (75, 274, 3, CONVERT(DATE, '2022-05-09', 23), 80.71, 'Completed', 2.2);
--INSERT INTO enrollments VALUES (76, 171, 19, CONVERT(DATE, '2023-11-10', 23), 17.52, 'Active', NULL);
--INSERT INTO enrollments VALUES (77, 236, 12, CONVERT(DATE, '2024-02-05', 23), 23.62, 'Completed', 2.2);
--INSERT INTO enrollments VALUES (78, 181, 8, CONVERT(DATE, '2024-10-24', 23), 11.56, 'Completed', 1.9);
--INSERT INTO enrollments VALUES (79, 160, 18, CONVERT(DATE, '2023-05-25', 23), 94.36, 'Active', NULL);
--INSERT INTO enrollments VALUES (80, 130, 11, CONVERT(DATE, '2023-12-19', 23), 21.46, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (81, 276, 13, CONVERT(DATE, '2023-08-28', 23), 68.5, 'Active', NULL);
--INSERT INTO enrollments VALUES (82, 25, 18, CONVERT(DATE, '2024-03-23', 23), 82.55, 'Active', NULL);
--INSERT INTO enrollments VALUES (83, 235, 13, CONVERT(DATE, '2023-08-29', 23), 48.02, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (84, 45, 13, CONVERT(DATE, '2024-04-02', 23), 14.28, 'Completed', 4.1);
--INSERT INTO enrollments VALUES (85, 101, 19, CONVERT(DATE, '2024-07-28', 23), 35.87, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (86, 70, 15, CONVERT(DATE, '2024-04-11', 23), 85.69, 'Active', NULL);
--INSERT INTO enrollments VALUES (87, 207, 1, CONVERT(DATE, '2024-03-11', 23), 15.27, 'Completed', 4.4);
--INSERT INTO enrollments VALUES (88, 151, 17, CONVERT(DATE, '2023-08-01', 23), 71.05, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (89, 299, 19, CONVERT(DATE, '2024-04-11', 23), 77.6, 'Completed', 4.6);
--INSERT INTO enrollments VALUES (90, 13, 14, CONVERT(DATE, '2022-03-24', 23), 14.42, 'Active', NULL);
--INSERT INTO enrollments VALUES (91, 140, 10, CONVERT(DATE, '2022-01-08', 23), 72.4, 'Completed', 4.3);
--INSERT INTO enrollments VALUES (92, 243, 6, CONVERT(DATE, '2024-11-14', 23), 83.78, 'Completed', 3.0);
--INSERT INTO enrollments VALUES (93, 36, 19, CONVERT(DATE, '2023-12-31', 23), 99.26, 'Completed', 3.4);
--INSERT INTO enrollments VALUES (94, 80, 15, CONVERT(DATE, '2023-02-03', 23), 35.37, 'Completed', 1.3);
--INSERT INTO enrollments VALUES (95, 65, 5, CONVERT(DATE, '2024-08-29', 23), 98.93, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (96, 71, 17, CONVERT(DATE, '2024-06-17', 23), 50.33, 'Completed', 2.2);
--INSERT INTO enrollments VALUES (97, 286, 12, CONVERT(DATE, '2022-11-01', 23), 65.18, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (98, 219, 18, CONVERT(DATE, '2024-02-13', 23), 96.42, 'Completed', 1.6);
--INSERT INTO enrollments VALUES (99, 206, 8, CONVERT(DATE, '2024-01-04', 23), 77.49, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (100, 225, 11, CONVERT(DATE, '2024-03-17', 23), 40.4, 'Completed', 1.0);
--INSERT INTO enrollments VALUES (101, 20, 19, CONVERT(DATE, '2023-12-08', 23), 69.1, 'Completed', 4.4);
--INSERT INTO enrollments VALUES (102, 195, 13, CONVERT(DATE, '2024-05-28', 23), 15.15, 'Active', NULL);
--INSERT INTO enrollments VALUES (103, 10, 5, CONVERT(DATE, '2023-01-06', 23), 74.99, 'Active', NULL);
--INSERT INTO enrollments VALUES (104, 243, 5, CONVERT(DATE, '2023-09-04', 23), 98.13, 'Active', NULL);
--INSERT INTO enrollments VALUES (105, 95, 4, CONVERT(DATE, '2023-02-14', 23), 61.52, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (106, 246, 19, CONVERT(DATE, '2022-05-08', 23), 71.59, 'Completed', 4.8);
--INSERT INTO enrollments VALUES (107, 259, 9, CONVERT(DATE, '2023-07-16', 23), 28.22, 'Active', NULL);
--INSERT INTO enrollments VALUES (108, 128, 16, CONVERT(DATE, '2024-07-19', 23), 1.11, 'Completed', 4.3);
--INSERT INTO enrollments VALUES (109, 19, 20, CONVERT(DATE, '2023-05-10', 23), 2.89, 'Active', NULL);
--INSERT INTO enrollments VALUES (110, 115, 13, CONVERT(DATE, '2023-06-26', 23), 43.48, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (111, 163, 12, CONVERT(DATE, '2023-08-07', 23), 47.47, 'Active', NULL);
--INSERT INTO enrollments VALUES (112, 18, 6, CONVERT(DATE, '2023-12-17', 23), 24.86, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (113, 23, 18, CONVERT(DATE, '2023-11-22', 23), 20.05, 'Active', NULL);
--INSERT INTO enrollments VALUES (114, 254, 4, CONVERT(DATE, '2022-04-21', 23), 2.52, 'Completed', 3.7);
--INSERT INTO enrollments VALUES (115, 82, 12, CONVERT(DATE, '2023-05-04', 23), 2.73, 'Active', NULL);
--INSERT INTO enrollments VALUES (116, 45, 9, CONVERT(DATE, '2024-02-22', 23), 70.54, 'Active', NULL);
--INSERT INTO enrollments VALUES (117, 55, 18, CONVERT(DATE, '2022-10-13', 23), 41.9, 'Active', NULL);
--INSERT INTO enrollments VALUES (118, 270, 14, CONVERT(DATE, '2024-08-30', 23), 63.28, 'Active', NULL);
--INSERT INTO enrollments VALUES (119, 195, 5, CONVERT(DATE, '2022-08-11', 23), 31.86, 'Completed', 3.7);
--INSERT INTO enrollments VALUES (120, 87, 9, CONVERT(DATE, '2022-09-26', 23), 25.36, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (121, 45, 10, CONVERT(DATE, '2023-02-15', 23), 7.86, 'Active', NULL);
--INSERT INTO enrollments VALUES (122, 128, 14, CONVERT(DATE, '2022-10-07', 23), 46.9, 'Active', NULL);
--INSERT INTO enrollments VALUES (123, 232, 9, CONVERT(DATE, '2023-08-21', 23), 41.87, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (124, 143, 3, CONVERT(DATE, '2022-03-24', 23), 65.22, 'Completed', 3.5);
--INSERT INTO enrollments VALUES (125, 17, 20, CONVERT(DATE, '2022-06-17', 23), 89.44, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (126, 41, 13, CONVERT(DATE, '2024-10-11', 23), 2.96, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (127, 283, 15, CONVERT(DATE, '2023-11-21', 23), 36.22, 'Completed', 4.1);
--INSERT INTO enrollments VALUES (128, 88, 6, CONVERT(DATE, '2022-03-14', 23), 43.62, 'Active', NULL);
--INSERT INTO enrollments VALUES (129, 74, 12, CONVERT(DATE, '2022-11-02', 23), 43.16, 'Completed', 1.4);
--INSERT INTO enrollments VALUES (130, 205, 19, CONVERT(DATE, '2024-07-07', 23), 90.94, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (131, 265, 15, CONVERT(DATE, '2024-02-11', 23), 5.88, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (132, 247, 1, CONVERT(DATE, '2023-09-28', 23), 92.75, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (133, 115, 2, CONVERT(DATE, '2024-09-30', 23), 76.56, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (134, 165, 17, CONVERT(DATE, '2022-01-11', 23), 70.31, 'Completed', 1.2);
--INSERT INTO enrollments VALUES (135, 52, 6, CONVERT(DATE, '2024-11-13', 23), 33.34, 'Active', NULL);
--INSERT INTO enrollments VALUES (136, 18, 14, CONVERT(DATE, '2023-03-25', 23), 72.92, 'Completed', 1.0);
--INSERT INTO enrollments VALUES (137, 251, 17, CONVERT(DATE, '2023-09-21', 23), 4.41, 'Active', NULL);
--INSERT INTO enrollments VALUES (138, 106, 16, CONVERT(DATE, '2024-05-04', 23), 16.38, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (139, 75, 8, CONVERT(DATE, '2022-10-28', 23), 64.77, 'Active', NULL);
--INSERT INTO enrollments VALUES (140, 10, 10, CONVERT(DATE, '2024-05-08', 23), 79.63, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (141, 147, 19, CONVERT(DATE, '2024-04-25', 23), 40.79, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (142, 211, 9, CONVERT(DATE, '2022-12-21', 23), 26.48, 'Active', NULL);
--INSERT INTO enrollments VALUES (143, 19, 2, CONVERT(DATE, '2022-03-11', 23), 19.37, 'Completed', 3.3);
--INSERT INTO enrollments VALUES (144, 218, 2, CONVERT(DATE, '2024-12-08', 23), 48.3, 'Active', NULL);
--INSERT INTO enrollments VALUES (145, 16, 6, CONVERT(DATE, '2022-01-23', 23), 22.28, 'Completed', 4.4);
--INSERT INTO enrollments VALUES (146, 19, 20, CONVERT(DATE, '2023-03-30', 23), 99.84, 'Completed', 1.8);
--INSERT INTO enrollments VALUES (147, 123, 13, CONVERT(DATE, '2024-02-04', 23), 60.45, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (148, 150, 13, CONVERT(DATE, '2022-09-17', 23), 17.23, 'Completed', 4.9);
--INSERT INTO enrollments VALUES (149, 229, 17, CONVERT(DATE, '2024-11-24', 23), 44.74, 'Active', NULL);
--INSERT INTO enrollments VALUES (150, 78, 3, CONVERT(DATE, '2023-10-02', 23), 49.86, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (151, 120, 18, CONVERT(DATE, '2024-04-05', 23), 8.93, 'Completed', 4.3);
--INSERT INTO enrollments VALUES (152, 170, 10, CONVERT(DATE, '2022-10-23', 23), 41.49, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (153, 229, 18, CONVERT(DATE, '2022-01-15', 23), 28.07, 'Completed', 4.3);
--INSERT INTO enrollments VALUES (154, 7, 2, CONVERT(DATE, '2022-08-16', 23), 40.5, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (155, 45, 15, CONVERT(DATE, '2022-09-04', 23), 68.19, 'Active', NULL);
--INSERT INTO enrollments VALUES (156, 130, 2, CONVERT(DATE, '2023-04-29', 23), 59.08, 'Completed', 2.4);
--INSERT INTO enrollments VALUES (157, 53, 10, CONVERT(DATE, '2024-07-30', 23), 58.83, 'Active', NULL);
--INSERT INTO enrollments VALUES (158, 160, 13, CONVERT(DATE, '2023-08-17', 23), 39.7, 'Active', NULL);
--INSERT INTO enrollments VALUES (159, 146, 16, CONVERT(DATE, '2022-02-25', 23), 81.03, 'Completed', 1.7);
--INSERT INTO enrollments VALUES (160, 216, 1, CONVERT(DATE, '2022-01-07', 23), 5.42, 'Completed', 1.9);
--INSERT INTO enrollments VALUES (161, 297, 7, CONVERT(DATE, '2024-07-10', 23), 17.97, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (162, 273, 3, CONVERT(DATE, '2022-07-16', 23), 73.39, 'Completed', 2.8);
--INSERT INTO enrollments VALUES (163, 142, 11, CONVERT(DATE, '2022-04-02', 23), 69.62, 'Active', NULL);
--INSERT INTO enrollments VALUES (164, 176, 7, CONVERT(DATE, '2022-03-26', 23), 59.37, 'Active', NULL);
--INSERT INTO enrollments VALUES (165, 122, 19, CONVERT(DATE, '2022-04-06', 23), 59.97, 'Completed', 3.3);
--INSERT INTO enrollments VALUES (166, 259, 12, CONVERT(DATE, '2024-05-13', 23), 44.28, 'Active', NULL);
--INSERT INTO enrollments VALUES (167, 174, 9, CONVERT(DATE, '2022-09-07', 23), 52.96, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (168, 43, 11, CONVERT(DATE, '2024-11-01', 23), 52.16, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (169, 51, 18, CONVERT(DATE, '2023-12-04', 23), 0.89, 'Completed', 1.2);
--INSERT INTO enrollments VALUES (170, 263, 15, CONVERT(DATE, '2023-10-12', 23), 3.83, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (171, 34, 8, CONVERT(DATE, '2022-07-28', 23), 69.33, 'Active', NULL);
--INSERT INTO enrollments VALUES (172, 217, 5, CONVERT(DATE, '2022-11-29', 23), 58.05, 'Completed', 3.8);
--INSERT INTO enrollments VALUES (173, 195, 14, CONVERT(DATE, '2024-03-16', 23), 90.83, 'Completed', 1.6);
--INSERT INTO enrollments VALUES (174, 4, 15, CONVERT(DATE, '2024-06-26', 23), 47.85, 'Completed', 1.4);
--INSERT INTO enrollments VALUES (175, 203, 13, CONVERT(DATE, '2024-06-26', 23), 61.18, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (176, 207, 14, CONVERT(DATE, '2022-06-27', 23), 38.16, 'Active', NULL);
--INSERT INTO enrollments VALUES (177, 154, 12, CONVERT(DATE, '2024-07-18', 23), 54.28, 'Active', NULL);
--INSERT INTO enrollments VALUES (178, 145, 4, CONVERT(DATE, '2023-08-22', 23), 61.54, 'Active', NULL);
--INSERT INTO enrollments VALUES (179, 269, 7, CONVERT(DATE, '2022-04-19', 23), 44.63, 'Completed', 4.8);
--INSERT INTO enrollments VALUES (180, 168, 18, CONVERT(DATE, '2023-02-18', 23), 38.53, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (181, 171, 1, CONVERT(DATE, '2023-11-04', 23), 96.34, 'Completed', 3.3);
--INSERT INTO enrollments VALUES (182, 24, 15, CONVERT(DATE, '2024-11-10', 23), 33.47, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (183, 58, 9, CONVERT(DATE, '2024-02-05', 23), 99.06, 'Active', NULL);
--INSERT INTO enrollments VALUES (184, 215, 9, CONVERT(DATE, '2022-02-27', 23), 91.23, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (185, 291, 13, CONVERT(DATE, '2022-04-11', 23), 97.65, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (186, 127, 10, CONVERT(DATE, '2022-07-28', 23), 2.27, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (187, 125, 1, CONVERT(DATE, '2023-06-29', 23), 27.76, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (188, 56, 7, CONVERT(DATE, '2022-05-01', 23), 44.79, 'Completed', 3.3);
--INSERT INTO enrollments VALUES (189, 4, 15, CONVERT(DATE, '2022-12-14', 23), 62.31, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (190, 164, 16, CONVERT(DATE, '2024-05-16', 23), 14.53, 'Completed', 3.2);
--INSERT INTO enrollments VALUES (191, 168, 6, CONVERT(DATE, '2024-01-26', 23), 73.81, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (192, 29, 7, CONVERT(DATE, '2022-05-02', 23), 83.2, 'Completed', 1.6);
--INSERT INTO enrollments VALUES (193, 31, 12, CONVERT(DATE, '2024-02-22', 23), 11.14, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (194, 91, 7, CONVERT(DATE, '2024-02-09', 23), 68.56, 'Completed', 2.8);
--INSERT INTO enrollments VALUES (195, 135, 10, CONVERT(DATE, '2022-03-14', 23), 43.88, 'Completed', 2.1);
--INSERT INTO enrollments VALUES (196, 186, 19, CONVERT(DATE, '2024-01-17', 23), 22.2, 'Active', NULL);
--INSERT INTO enrollments VALUES (197, 282, 20, CONVERT(DATE, '2023-04-16', 23), 61.52, 'Completed', 1.6);
--INSERT INTO enrollments VALUES (198, 230, 8, CONVERT(DATE, '2023-08-03', 23), 94.96, 'Completed', 3.4);
--INSERT INTO enrollments VALUES (199, 287, 16, CONVERT(DATE, '2024-08-09', 23), 33.43, 'Completed', 2.8);
--INSERT INTO enrollments VALUES (200, 194, 10, CONVERT(DATE, '2022-01-30', 23), 71.85, 'Completed', 1.7);
--INSERT INTO enrollments VALUES (201, 232, 6, CONVERT(DATE, '2022-05-04', 23), 25.33, 'Completed', 1.5);
--INSERT INTO enrollments VALUES (202, 41, 7, CONVERT(DATE, '2023-04-18', 23), 19.86, 'Completed', 1.0);
--INSERT INTO enrollments VALUES (203, 151, 11, CONVERT(DATE, '2023-03-09', 23), 69.14, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (204, 275, 1, CONVERT(DATE, '2024-10-22', 23), 88.41, 'Active', NULL);
--INSERT INTO enrollments VALUES (205, 25, 5, CONVERT(DATE, '2022-07-24', 23), 83.31, 'Completed', 4.7);
--INSERT INTO enrollments VALUES (206, 266, 15, CONVERT(DATE, '2023-05-03', 23), 35.89, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (207, 270, 19, CONVERT(DATE, '2022-02-05', 23), 17.63, 'Active', NULL);
--INSERT INTO enrollments VALUES (208, 230, 17, CONVERT(DATE, '2024-05-02', 23), 65.58, 'Active', NULL);
--INSERT INTO enrollments VALUES (209, 77, 6, CONVERT(DATE, '2022-08-28', 23), 2.14, 'Active', NULL);
--INSERT INTO enrollments VALUES (210, 78, 18, CONVERT(DATE, '2024-05-24', 23), 91.94, 'Completed', 4.3);
--INSERT INTO enrollments VALUES (211, 163, 20, CONVERT(DATE, '2023-05-27', 23), 63.69, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (212, 162, 3, CONVERT(DATE, '2023-12-14', 23), 99.0, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (213, 25, 3, CONVERT(DATE, '2024-09-24', 23), 54.74, 'Active', NULL);
--INSERT INTO enrollments VALUES (214, 185, 15, CONVERT(DATE, '2022-09-20', 23), 43.08, 'Completed', 3.8);
--INSERT INTO enrollments VALUES (215, 253, 14, CONVERT(DATE, '2024-03-17', 23), 62.5, 'Completed', 3.1);
--INSERT INTO enrollments VALUES (216, 255, 3, CONVERT(DATE, '2024-06-25', 23), 4.09, 'Active', NULL);
--INSERT INTO enrollments VALUES (217, 159, 5, CONVERT(DATE, '2024-06-24', 23), 79.44, 'Active', NULL);
--INSERT INTO enrollments VALUES (218, 29, 2, CONVERT(DATE, '2023-05-10', 23), 37.02, 'Active', NULL);
--INSERT INTO enrollments VALUES (219, 34, 19, CONVERT(DATE, '2024-07-05', 23), 49.56, 'Completed', 3.7);
--INSERT INTO enrollments VALUES (220, 225, 2, CONVERT(DATE, '2022-11-24', 23), 67.9, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (221, 186, 3, CONVERT(DATE, '2023-01-19', 23), 11.85, 'Active', NULL);
--INSERT INTO enrollments VALUES (222, 149, 16, CONVERT(DATE, '2023-09-30', 23), 67.86, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (223, 239, 20, CONVERT(DATE, '2023-01-04', 23), 32.77, 'Active', NULL);
--INSERT INTO enrollments VALUES (224, 185, 14, CONVERT(DATE, '2023-12-03', 23), 32.1, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (225, 206, 2, CONVERT(DATE, '2024-05-05', 23), 67.91, 'Active', NULL);
--INSERT INTO enrollments VALUES (226, 75, 5, CONVERT(DATE, '2023-06-01', 23), 98.42, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (227, 219, 20, CONVERT(DATE, '2022-12-20', 23), 18.92, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (228, 234, 7, CONVERT(DATE, '2023-04-18', 23), 27.03, 'Completed', 4.3);
--INSERT INTO enrollments VALUES (229, 179, 12, CONVERT(DATE, '2022-03-07', 23), 32.95, 'Active', NULL);
--INSERT INTO enrollments VALUES (230, 89, 6, CONVERT(DATE, '2024-05-26', 23), 66.65, 'Active', NULL);
--INSERT INTO enrollments VALUES (231, 84, 4, CONVERT(DATE, '2022-10-16', 23), 1.73, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (232, 185, 18, CONVERT(DATE, '2022-08-19', 23), 10.1, 'Active', NULL);
--INSERT INTO enrollments VALUES (233, 125, 1, CONVERT(DATE, '2024-12-24', 23), 10.29, 'Active', NULL);
--INSERT INTO enrollments VALUES (234, 135, 16, CONVERT(DATE, '2024-11-14', 23), 9.31, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (235, 90, 3, CONVERT(DATE, '2023-06-24', 23), 75.48, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (236, 242, 7, CONVERT(DATE, '2022-02-20', 23), 53.37, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (237, 200, 19, CONVERT(DATE, '2022-06-24', 23), 30.73, 'Active', NULL);
--INSERT INTO enrollments VALUES (238, 57, 1, CONVERT(DATE, '2022-03-26', 23), 22.02, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (239, 286, 9, CONVERT(DATE, '2022-09-12', 23), 10.01, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (240, 69, 7, CONVERT(DATE, '2023-09-30', 23), 29.94, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (241, 226, 17, CONVERT(DATE, '2024-06-11', 23), 79.91, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (242, 142, 6, CONVERT(DATE, '2023-06-30', 23), 25.35, 'Active', NULL);
--INSERT INTO enrollments VALUES (243, 211, 17, CONVERT(DATE, '2022-06-09', 23), 46.37, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (244, 47, 14, CONVERT(DATE, '2023-01-12', 23), 71.96, 'Completed', 1.4);
--INSERT INTO enrollments VALUES (245, 227, 18, CONVERT(DATE, '2024-01-02', 23), 93.22, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (246, 55, 17, CONVERT(DATE, '2023-07-30', 23), 66.69, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (247, 57, 14, CONVERT(DATE, '2024-02-16', 23), 91.15, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (248, 246, 6, CONVERT(DATE, '2024-02-09', 23), 49.47, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (249, 104, 10, CONVERT(DATE, '2022-04-20', 23), 64.98, 'Active', NULL);
--INSERT INTO enrollments VALUES (250, 36, 20, CONVERT(DATE, '2023-07-05', 23), 37.36, 'Completed', 3.4);
--INSERT INTO enrollments VALUES (251, 9, 20, CONVERT(DATE, '2023-06-21', 23), 31.41, 'Active', NULL);
--INSERT INTO enrollments VALUES (252, 195, 18, CONVERT(DATE, '2022-11-17', 23), 83.5, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (253, 39, 6, CONVERT(DATE, '2024-11-21', 23), 21.7, 'Active', NULL);
--INSERT INTO enrollments VALUES (254, 13, 2, CONVERT(DATE, '2024-11-16', 23), 76.14, 'Active', NULL);
--INSERT INTO enrollments VALUES (255, 98, 9, CONVERT(DATE, '2023-11-07', 23), 38.82, 'Active', NULL);
--INSERT INTO enrollments VALUES (256, 192, 8, CONVERT(DATE, '2022-03-18', 23), 7.53, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (257, 250, 9, CONVERT(DATE, '2024-09-18', 23), 82.2, 'Completed', 2.9);
--INSERT INTO enrollments VALUES (258, 280, 3, CONVERT(DATE, '2024-03-30', 23), 6.73, 'Completed', 3.6);
--INSERT INTO enrollments VALUES (259, 43, 7, CONVERT(DATE, '2023-11-20', 23), 39.95, 'Active', NULL);
--INSERT INTO enrollments VALUES (260, 19, 5, CONVERT(DATE, '2024-01-07', 23), 82.2, 'Completed', 5.0);
--INSERT INTO enrollments VALUES (261, 260, 19, CONVERT(DATE, '2023-09-03', 23), 44.35, 'Completed', 3.0);
--INSERT INTO enrollments VALUES (262, 15, 12, CONVERT(DATE, '2024-05-04', 23), 68.57, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (263, 268, 10, CONVERT(DATE, '2022-11-30', 23), 5.23, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (264, 181, 17, CONVERT(DATE, '2024-10-24', 23), 2.42, 'Active', NULL);
--INSERT INTO enrollments VALUES (265, 33, 5, CONVERT(DATE, '2022-11-29', 23), 21.26, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (266, 239, 19, CONVERT(DATE, '2022-03-06', 23), 0.34, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (267, 228, 4, CONVERT(DATE, '2022-11-03', 23), 33.84, 'Active', NULL);
--INSERT INTO enrollments VALUES (268, 291, 12, CONVERT(DATE, '2022-03-25', 23), 41.93, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (269, 59, 20, CONVERT(DATE, '2024-03-11', 23), 26.28, 'Active', NULL);
--INSERT INTO enrollments VALUES (270, 66, 5, CONVERT(DATE, '2022-11-09', 23), 29.22, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (271, 160, 1, CONVERT(DATE, '2024-08-31', 23), 1.8, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (272, 270, 6, CONVERT(DATE, '2024-03-30', 23), 89.77, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (273, 153, 3, CONVERT(DATE, '2022-07-06', 23), 72.63, 'Active', NULL);
--INSERT INTO enrollments VALUES (274, 33, 15, CONVERT(DATE, '2024-07-04', 23), 79.91, 'Completed', 1.6);
--INSERT INTO enrollments VALUES (275, 58, 6, CONVERT(DATE, '2022-10-30', 23), 73.19, 'Completed', 2.3);
--INSERT INTO enrollments VALUES (276, 45, 4, CONVERT(DATE, '2024-01-21', 23), 82.9, 'Active', NULL);
--INSERT INTO enrollments VALUES (277, 40, 3, CONVERT(DATE, '2022-04-04', 23), 51.41, 'Completed', 2.1);
--INSERT INTO enrollments VALUES (278, 46, 9, CONVERT(DATE, '2022-08-18', 23), 9.3, 'Completed', 3.2);
--INSERT INTO enrollments VALUES (279, 274, 20, CONVERT(DATE, '2022-09-20', 23), 39.6, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (280, 198, 15, CONVERT(DATE, '2022-12-18', 23), 19.16, 'Active', NULL);
--INSERT INTO enrollments VALUES (281, 174, 13, CONVERT(DATE, '2022-08-04', 23), 49.84, 'Active', NULL);
--INSERT INTO enrollments VALUES (282, 195, 20, CONVERT(DATE, '2023-05-16', 23), 93.48, 'Active', NULL);
--INSERT INTO enrollments VALUES (283, 300, 1, CONVERT(DATE, '2023-12-05', 23), 44.01, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (284, 217, 14, CONVERT(DATE, '2023-06-06', 23), 73.67, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (285, 293, 1, CONVERT(DATE, '2022-02-25', 23), 81.68, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (286, 196, 13, CONVERT(DATE, '2023-07-10', 23), 32.53, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (287, 208, 18, CONVERT(DATE, '2022-02-11', 23), 41.74, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (288, 55, 20, CONVERT(DATE, '2022-02-01', 23), 43.35, 'Active', NULL);
--INSERT INTO enrollments VALUES (289, 53, 6, CONVERT(DATE, '2022-06-26', 23), 18.89, 'Completed', 4.7);
--INSERT INTO enrollments VALUES (290, 191, 3, CONVERT(DATE, '2024-12-24', 23), 34.28, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (291, 256, 2, CONVERT(DATE, '2023-02-13', 23), 25.79, 'Active', NULL);
--INSERT INTO enrollments VALUES (292, 4, 12, CONVERT(DATE, '2022-04-21', 23), 98.21, 'Active', NULL);
--INSERT INTO enrollments VALUES (293, 298, 13, CONVERT(DATE, '2023-12-13', 23), 69.39, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (294, 17, 11, CONVERT(DATE, '2022-11-07', 23), 71.55, 'Completed', 4.1);
--INSERT INTO enrollments VALUES (295, 219, 5, CONVERT(DATE, '2022-08-11', 23), 72.93, 'Completed', 4.5);
--INSERT INTO enrollments VALUES (296, 228, 4, CONVERT(DATE, '2024-02-02', 23), 94.82, 'Active', NULL);
--INSERT INTO enrollments VALUES (297, 165, 18, CONVERT(DATE, '2023-08-03', 23), 61.22, 'Active', NULL);
--INSERT INTO enrollments VALUES (298, 68, 3, CONVERT(DATE, '2024-04-13', 23), 0.41, 'Active', NULL);
--INSERT INTO enrollments VALUES (299, 265, 14, CONVERT(DATE, '2023-01-05', 23), 47.26, 'Active', NULL);
--INSERT INTO enrollments VALUES (300, 154, 11, CONVERT(DATE, '2023-05-30', 23), 14.59, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (301, 266, 19, CONVERT(DATE, '2023-09-07', 23), 79.05, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (302, 175, 10, CONVERT(DATE, '2023-09-13', 23), 40.11, 'Active', NULL);
--INSERT INTO enrollments VALUES (303, 113, 5, CONVERT(DATE, '2022-03-22', 23), 52.54, 'Active', NULL);
--INSERT INTO enrollments VALUES (304, 233, 3, CONVERT(DATE, '2022-05-04', 23), 98.99, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (305, 28, 4, CONVERT(DATE, '2023-06-01', 23), 9.41, 'Completed', 1.4);
--INSERT INTO enrollments VALUES (306, 100, 1, CONVERT(DATE, '2023-03-12', 23), 92.07, 'Active', NULL);
--INSERT INTO enrollments VALUES (307, 215, 19, CONVERT(DATE, '2024-12-10', 23), 21.04, 'Completed', 2.4);
--INSERT INTO enrollments VALUES (308, 291, 16, CONVERT(DATE, '2022-06-12', 23), 31.81, 'Active', NULL);
--INSERT INTO enrollments VALUES (309, 13, 17, CONVERT(DATE, '2022-03-05', 23), 58.55, 'Completed', 2.3);
--INSERT INTO enrollments VALUES (310, 9, 3, CONVERT(DATE, '2023-07-31', 23), 31.93, 'Completed', 1.9);
--INSERT INTO enrollments VALUES (311, 289, 1, CONVERT(DATE, '2023-01-20', 23), 11.54, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (312, 26, 18, CONVERT(DATE, '2024-07-27', 23), 88.43, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (313, 54, 5, CONVERT(DATE, '2024-06-12', 23), 42.56, 'Active', NULL);
--INSERT INTO enrollments VALUES (314, 235, 15, CONVERT(DATE, '2024-05-22', 23), 99.99, 'Completed', 2.9);
--INSERT INTO enrollments VALUES (315, 14, 8, CONVERT(DATE, '2022-05-06', 23), 90.06, 'Completed', 3.3);
--INSERT INTO enrollments VALUES (316, 211, 17, CONVERT(DATE, '2022-01-01', 23), 24.67, 'Completed', 3.2);
--INSERT INTO enrollments VALUES (317, 72, 18, CONVERT(DATE, '2024-09-04', 23), 5.7, 'Completed', 3.2);
--INSERT INTO enrollments VALUES (318, 248, 16, CONVERT(DATE, '2023-10-08', 23), 26.01, 'Completed', 4.5);
--INSERT INTO enrollments VALUES (319, 60, 4, CONVERT(DATE, '2024-06-16', 23), 57.08, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (320, 279, 3, CONVERT(DATE, '2024-09-18', 23), 17.78, 'Completed', 2.2);
--INSERT INTO enrollments VALUES (321, 75, 11, CONVERT(DATE, '2023-06-11', 23), 99.11, 'Active', NULL);
--INSERT INTO enrollments VALUES (322, 205, 16, CONVERT(DATE, '2024-10-20', 23), 33.06, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (323, 92, 20, CONVERT(DATE, '2023-05-22', 23), 36.94, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (324, 183, 12, CONVERT(DATE, '2022-01-15', 23), 67.5, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (325, 77, 1, CONVERT(DATE, '2024-07-01', 23), 94.8, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (326, 40, 3, CONVERT(DATE, '2024-05-28', 23), 39.56, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (327, 94, 16, CONVERT(DATE, '2024-05-18', 23), 2.23, 'Active', NULL);
--INSERT INTO enrollments VALUES (328, 191, 8, CONVERT(DATE, '2022-02-21', 23), 76.79, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (329, 4, 16, CONVERT(DATE, '2023-07-08', 23), 33.45, 'Active', NULL);
--INSERT INTO enrollments VALUES (330, 29, 4, CONVERT(DATE, '2022-10-17', 23), 97.06, 'Completed', 4.0);
--INSERT INTO enrollments VALUES (331, 110, 2, CONVERT(DATE, '2023-06-18', 23), 9.96, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (332, 1, 6, CONVERT(DATE, '2024-08-12', 23), 19.06, 'Completed', 1.1);
--INSERT INTO enrollments VALUES (333, 182, 17, CONVERT(DATE, '2024-02-28', 23), 76.42, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (334, 121, 13, CONVERT(DATE, '2024-02-28', 23), 74.54, 'Completed', 1.5);
--INSERT INTO enrollments VALUES (335, 24, 19, CONVERT(DATE, '2023-06-30', 23), 78.81, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (336, 20, 7, CONVERT(DATE, '2023-02-12', 23), 8.19, 'Completed', 2.2);
--INSERT INTO enrollments VALUES (337, 44, 16, CONVERT(DATE, '2022-11-16', 23), 47.5, 'Completed', 3.6);
--INSERT INTO enrollments VALUES (338, 41, 19, CONVERT(DATE, '2022-10-21', 23), 14.04, 'Completed', 3.1);
--INSERT INTO enrollments VALUES (339, 61, 17, CONVERT(DATE, '2022-03-07', 23), 50.39, 'Completed', 2.4);
--INSERT INTO enrollments VALUES (340, 163, 9, CONVERT(DATE, '2024-11-28', 23), 62.18, 'Active', NULL);
--INSERT INTO enrollments VALUES (341, 250, 17, CONVERT(DATE, '2024-08-18', 23), 57.53, 'Active', NULL);
--INSERT INTO enrollments VALUES (342, 179, 5, CONVERT(DATE, '2022-11-12', 23), 91.36, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (343, 99, 11, CONVERT(DATE, '2022-07-28', 23), 0.36, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (344, 146, 10, CONVERT(DATE, '2023-01-01', 23), 98.82, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (345, 205, 16, CONVERT(DATE, '2023-10-09', 23), 99.0, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (346, 131, 16, CONVERT(DATE, '2023-06-11', 23), 46.83, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (347, 19, 14, CONVERT(DATE, '2024-12-05', 23), 75.71, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (348, 136, 19, CONVERT(DATE, '2023-07-29', 23), 86.39, 'Completed', 2.8);
--INSERT INTO enrollments VALUES (349, 133, 16, CONVERT(DATE, '2023-06-23', 23), 55.38, 'Completed', 2.8);
--INSERT INTO enrollments VALUES (350, 257, 2, CONVERT(DATE, '2022-04-12', 23), 4.17, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (351, 73, 15, CONVERT(DATE, '2022-09-14', 23), 27.05, 'Active', NULL);
--INSERT INTO enrollments VALUES (352, 17, 2, CONVERT(DATE, '2022-02-21', 23), 83.53, 'Completed', 3.8);
--INSERT INTO enrollments VALUES (353, 27, 19, CONVERT(DATE, '2023-10-23', 23), 29.62, 'Active', NULL);
--INSERT INTO enrollments VALUES (354, 147, 3, CONVERT(DATE, '2023-05-04', 23), 5.15, 'Completed', 2.7);
--INSERT INTO enrollments VALUES (355, 35, 3, CONVERT(DATE, '2023-08-20', 23), 99.7, 'Active', NULL);
--INSERT INTO enrollments VALUES (356, 4, 4, CONVERT(DATE, '2023-05-16', 23), 40.9, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (357, 20, 7, CONVERT(DATE, '2023-03-25', 23), 21.18, 'Completed', 2.0);
--INSERT INTO enrollments VALUES (358, 212, 5, CONVERT(DATE, '2022-10-25', 23), 11.05, 'Active', NULL);
--INSERT INTO enrollments VALUES (359, 113, 3, CONVERT(DATE, '2022-07-09', 23), 9.5, 'Active', NULL);
--INSERT INTO enrollments VALUES (360, 296, 14, CONVERT(DATE, '2023-08-14', 23), 7.72, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (361, 211, 12, CONVERT(DATE, '2023-03-14', 23), 37.99, 'Active', NULL);
--INSERT INTO enrollments VALUES (362, 242, 19, CONVERT(DATE, '2024-08-02', 23), 67.1, 'Completed', 1.4);
--INSERT INTO enrollments VALUES (363, 74, 19, CONVERT(DATE, '2024-08-01', 23), 21.25, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (364, 251, 15, CONVERT(DATE, '2023-05-17', 23), 49.19, 'Completed', 1.5);
--INSERT INTO enrollments VALUES (365, 139, 19, CONVERT(DATE, '2022-12-01', 23), 57.74, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (366, 23, 4, CONVERT(DATE, '2022-10-22', 23), 66.39, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (367, 217, 3, CONVERT(DATE, '2023-09-07', 23), 1.52, 'Completed', 4.4);
--INSERT INTO enrollments VALUES (368, 72, 7, CONVERT(DATE, '2024-12-02', 23), 75.91, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (369, 298, 13, CONVERT(DATE, '2024-12-25', 23), 95.32, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (370, 201, 20, CONVERT(DATE, '2023-11-10', 23), 96.11, 'Active', NULL);
--INSERT INTO enrollments VALUES (371, 67, 15, CONVERT(DATE, '2024-06-27', 23), 67.6, 'Active', NULL);
--INSERT INTO enrollments VALUES (372, 211, 1, CONVERT(DATE, '2023-02-06', 23), 31.55, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (373, 148, 13, CONVERT(DATE, '2022-05-26', 23), 41.39, 'Active', NULL);
--INSERT INTO enrollments VALUES (374, 116, 12, CONVERT(DATE, '2023-06-03', 23), 41.7, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (375, 38, 14, CONVERT(DATE, '2022-09-23', 23), 88.66, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (376, 291, 15, CONVERT(DATE, '2023-07-29', 23), 56.08, 'Completed', 4.7);
--INSERT INTO enrollments VALUES (377, 98, 15, CONVERT(DATE, '2024-03-24', 23), 46.99, 'Completed', 2.4);
--INSERT INTO enrollments VALUES (378, 132, 17, CONVERT(DATE, '2024-05-13', 23), 91.39, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (379, 57, 10, CONVERT(DATE, '2023-12-18', 23), 56.08, 'Completed', 2.2);
--INSERT INTO enrollments VALUES (380, 160, 20, CONVERT(DATE, '2023-07-16', 23), 46.87, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (381, 92, 3, CONVERT(DATE, '2023-12-18', 23), 49.7, 'Active', NULL);
--INSERT INTO enrollments VALUES (382, 237, 20, CONVERT(DATE, '2022-04-12', 23), 22.57, 'Active', NULL);
--INSERT INTO enrollments VALUES (383, 3, 3, CONVERT(DATE, '2022-12-03', 23), 24.16, 'Completed', 3.5);
--INSERT INTO enrollments VALUES (384, 127, 8, CONVERT(DATE, '2023-11-23', 23), 45.98, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (385, 21, 6, CONVERT(DATE, '2022-11-28', 23), 39.39, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (386, 16, 12, CONVERT(DATE, '2024-02-02', 23), 97.17, 'Completed', 3.1);
--INSERT INTO enrollments VALUES (387, 267, 8, CONVERT(DATE, '2024-05-04', 23), 88.07, 'Active', NULL);
--INSERT INTO enrollments VALUES (388, 109, 16, CONVERT(DATE, '2024-09-06', 23), 8.62, 'Active', NULL);
--INSERT INTO enrollments VALUES (389, 102, 16, CONVERT(DATE, '2023-12-10', 23), 85.2, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (390, 140, 4, CONVERT(DATE, '2022-05-16', 23), 29.19, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (391, 37, 14, CONVERT(DATE, '2023-11-17', 23), 56.11, 'Completed', 3.4);
--INSERT INTO enrollments VALUES (392, 23, 10, CONVERT(DATE, '2023-04-07', 23), 1.48, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (393, 271, 7, CONVERT(DATE, '2024-11-09', 23), 91.3, 'Completed', 1.1);
--INSERT INTO enrollments VALUES (394, 153, 3, CONVERT(DATE, '2022-01-26', 23), 73.65, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (395, 100, 5, CONVERT(DATE, '2022-02-14', 23), 3.95, 'Completed', 4.4);
--INSERT INTO enrollments VALUES (396, 216, 16, CONVERT(DATE, '2023-06-13', 23), 16.78, 'Completed', 4.5);
--INSERT INTO enrollments VALUES (397, 15, 14, CONVERT(DATE, '2022-03-10', 23), 46.36, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (398, 110, 11, CONVERT(DATE, '2024-11-07', 23), 51.72, 'Active', NULL);
--INSERT INTO enrollments VALUES (399, 148, 16, CONVERT(DATE, '2023-12-22', 23), 32.66, 'Active', NULL);
--INSERT INTO enrollments VALUES (400, 144, 8, CONVERT(DATE, '2024-02-17', 23), 98.53, 'Completed', 3.0);
--INSERT INTO enrollments VALUES (401, 221, 4, CONVERT(DATE, '2023-06-26', 23), 48.69, 'Active', NULL);
--INSERT INTO enrollments VALUES (402, 157, 17, CONVERT(DATE, '2022-03-26', 23), 59.92, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (403, 218, 7, CONVERT(DATE, '2024-09-22', 23), 18.55, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (404, 78, 6, CONVERT(DATE, '2023-06-02', 23), 1.22, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (405, 294, 17, CONVERT(DATE, '2022-04-15', 23), 36.93, 'Completed', 4.2);
--INSERT INTO enrollments VALUES (406, 16, 15, CONVERT(DATE, '2022-12-30', 23), 11.61, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (407, 49, 14, CONVERT(DATE, '2023-09-01', 23), 92.4, 'Active', NULL);
--INSERT INTO enrollments VALUES (408, 54, 4, CONVERT(DATE, '2022-07-22', 23), 91.15, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (409, 238, 11, CONVERT(DATE, '2022-05-19', 23), 17.54, 'Completed', 3.2);
--INSERT INTO enrollments VALUES (410, 132, 7, CONVERT(DATE, '2023-04-17', 23), 55.91, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (411, 9, 9, CONVERT(DATE, '2022-04-13', 23), 67.67, 'Completed', 3.5);
--INSERT INTO enrollments VALUES (412, 177, 8, CONVERT(DATE, '2022-03-21', 23), 99.54, 'Active', NULL);
--INSERT INTO enrollments VALUES (413, 69, 3, CONVERT(DATE, '2024-10-27', 23), 66.85, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (414, 139, 13, CONVERT(DATE, '2023-02-15', 23), 17.04, 'Active', NULL);
--INSERT INTO enrollments VALUES (415, 64, 1, CONVERT(DATE, '2024-02-24', 23), 79.03, 'Completed', 4.7);
--INSERT INTO enrollments VALUES (416, 139, 7, CONVERT(DATE, '2023-08-25', 23), 35.73, 'Active', NULL);
--INSERT INTO enrollments VALUES (417, 40, 16, CONVERT(DATE, '2024-08-08', 23), 52.26, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (418, 205, 18, CONVERT(DATE, '2024-04-13', 23), 21.82, 'Active', NULL);
--INSERT INTO enrollments VALUES (419, 21, 2, CONVERT(DATE, '2024-10-31', 23), 61.16, 'Active', NULL);
--INSERT INTO enrollments VALUES (420, 36, 9, CONVERT(DATE, '2022-09-21', 23), 19.26, 'Completed', 1.3);
--INSERT INTO enrollments VALUES (421, 153, 9, CONVERT(DATE, '2022-01-01', 23), 23.29, 'Active', NULL);
--INSERT INTO enrollments VALUES (422, 243, 12, CONVERT(DATE, '2022-01-06', 23), 47.14, 'Active', NULL);
--INSERT INTO enrollments VALUES (423, 154, 13, CONVERT(DATE, '2023-12-29', 23), 72.98, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (424, 250, 14, CONVERT(DATE, '2022-05-27', 23), 54.02, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (425, 153, 5, CONVERT(DATE, '2022-02-16', 23), 64.15, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (426, 182, 6, CONVERT(DATE, '2022-09-22', 23), 17.59, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (427, 28, 4, CONVERT(DATE, '2024-07-12', 23), 46.97, 'Completed', 1.7);
--INSERT INTO enrollments VALUES (428, 182, 2, CONVERT(DATE, '2024-03-26', 23), 10.2, 'Completed', 1.7);
--INSERT INTO enrollments VALUES (429, 102, 9, CONVERT(DATE, '2024-09-08', 23), 91.93, 'Active', NULL);
--INSERT INTO enrollments VALUES (430, 99, 11, CONVERT(DATE, '2024-02-01', 23), 2.95, 'Completed', 3.1);
--INSERT INTO enrollments VALUES (431, 166, 15, CONVERT(DATE, '2024-02-02', 23), 32.45, 'Completed', 3.3);
--INSERT INTO enrollments VALUES (432, 286, 10, CONVERT(DATE, '2023-08-13', 23), 19.05, 'Completed', 1.0);
--INSERT INTO enrollments VALUES (433, 230, 10, CONVERT(DATE, '2022-07-31', 23), 68.88, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (434, 146, 13, CONVERT(DATE, '2022-02-06', 23), 73.97, 'Active', NULL);
--INSERT INTO enrollments VALUES (435, 63, 10, CONVERT(DATE, '2022-07-09', 23), 57.17, 'Active', NULL);
--INSERT INTO enrollments VALUES (436, 39, 4, CONVERT(DATE, '2022-10-10', 23), 8.0, 'Completed', 2.0);
--INSERT INTO enrollments VALUES (437, 45, 18, CONVERT(DATE, '2023-06-08', 23), 10.56, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (438, 116, 1, CONVERT(DATE, '2022-06-09', 23), 22.93, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (439, 216, 7, CONVERT(DATE, '2023-11-22', 23), 46.64, 'Completed', 1.0);
--INSERT INTO enrollments VALUES (440, 153, 3, CONVERT(DATE, '2023-12-17', 23), 68.01, 'Active', NULL);
--INSERT INTO enrollments VALUES (441, 84, 4, CONVERT(DATE, '2024-03-02', 23), 54.28, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (442, 176, 12, CONVERT(DATE, '2022-06-26', 23), 61.56, 'Completed', 2.6);
--INSERT INTO enrollments VALUES (443, 67, 16, CONVERT(DATE, '2023-04-06', 23), 56.12, 'Completed', 3.1);
--INSERT INTO enrollments VALUES (444, 56, 1, CONVERT(DATE, '2022-12-04', 23), 56.26, 'Completed', 1.6);
--INSERT INTO enrollments VALUES (445, 134, 14, CONVERT(DATE, '2022-04-09', 23), 54.94, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (446, 259, 15, CONVERT(DATE, '2022-10-10', 23), 30.86, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (447, 22, 5, CONVERT(DATE, '2023-08-23', 23), 15.95, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (448, 193, 9, CONVERT(DATE, '2022-02-12', 23), 51.53, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (449, 226, 17, CONVERT(DATE, '2023-09-15', 23), 13.55, 'Completed', 3.6);
--INSERT INTO enrollments VALUES (450, 10, 3, CONVERT(DATE, '2023-03-04', 23), 74.09, 'Active', NULL);
--INSERT INTO enrollments VALUES (451, 63, 17, CONVERT(DATE, '2022-03-08', 23), 26.23, 'Active', NULL);
--INSERT INTO enrollments VALUES (452, 94, 20, CONVERT(DATE, '2023-11-12', 23), 80.13, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (453, 189, 20, CONVERT(DATE, '2022-03-14', 23), 35.81, 'Active', NULL);
--INSERT INTO enrollments VALUES (454, 251, 14, CONVERT(DATE, '2024-01-18', 23), 98.21, 'Active', NULL);
--INSERT INTO enrollments VALUES (455, 140, 4, CONVERT(DATE, '2022-05-01', 23), 28.56, 'Completed', 1.3);
--INSERT INTO enrollments VALUES (456, 201, 7, CONVERT(DATE, '2024-10-21', 23), 18.14, 'Active', NULL);
--INSERT INTO enrollments VALUES (457, 281, 1, CONVERT(DATE, '2023-10-15', 23), 18.9, 'Active', NULL);
--INSERT INTO enrollments VALUES (458, 133, 1, CONVERT(DATE, '2022-03-04', 23), 28.11, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (459, 226, 14, CONVERT(DATE, '2023-05-08', 23), 18.63, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (460, 92, 2, CONVERT(DATE, '2023-03-02', 23), 0.15, 'Completed', 2.0);
--INSERT INTO enrollments VALUES (461, 2, 8, CONVERT(DATE, '2023-10-17', 23), 28.05, 'Active', NULL);
--INSERT INTO enrollments VALUES (462, 206, 9, CONVERT(DATE, '2024-06-28', 23), 88.44, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (463, 57, 17, CONVERT(DATE, '2022-09-12', 23), 54.34, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (464, 233, 14, CONVERT(DATE, '2023-01-25', 23), 60.41, 'Active', NULL);
--INSERT INTO enrollments VALUES (465, 174, 14, CONVERT(DATE, '2023-04-09', 23), 62.54, 'Active', NULL);
--INSERT INTO enrollments VALUES (466, 170, 5, CONVERT(DATE, '2022-03-09', 23), 36.7, 'Active', NULL);
--INSERT INTO enrollments VALUES (467, 44, 1, CONVERT(DATE, '2024-08-13', 23), 84.11, 'Completed', 3.8);
--INSERT INTO enrollments VALUES (468, 119, 8, CONVERT(DATE, '2023-03-12', 23), 14.79, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (469, 286, 14, CONVERT(DATE, '2024-12-22', 23), 63.94, 'Completed', 4.6);
--INSERT INTO enrollments VALUES (470, 72, 11, CONVERT(DATE, '2022-08-03', 23), 66.09, 'Active', NULL);
--INSERT INTO enrollments VALUES (471, 181, 14, CONVERT(DATE, '2022-10-29', 23), 94.03, 'Active', NULL);
--INSERT INTO enrollments VALUES (472, 192, 12, CONVERT(DATE, '2024-09-23', 23), 74.49, 'Completed', 4.7);
--INSERT INTO enrollments VALUES (473, 46, 19, CONVERT(DATE, '2023-07-12', 23), 58.09, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (474, 156, 12, CONVERT(DATE, '2024-03-10', 23), 93.04, 'Active', NULL);
--INSERT INTO enrollments VALUES (475, 64, 14, CONVERT(DATE, '2022-12-20', 23), 53.26, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (476, 211, 4, CONVERT(DATE, '2024-05-30', 23), 2.29, 'Active', NULL);
--INSERT INTO enrollments VALUES (477, 10, 14, CONVERT(DATE, '2024-06-11', 23), 86.87, 'Active', NULL);
--INSERT INTO enrollments VALUES (478, 202, 17, CONVERT(DATE, '2024-09-04', 23), 69.62, 'Completed', 2.1);
--INSERT INTO enrollments VALUES (479, 9, 3, CONVERT(DATE, '2022-03-29', 23), 35.73, 'Completed', 3.4);
--INSERT INTO enrollments VALUES (480, 264, 9, CONVERT(DATE, '2024-07-22', 23), 90.31, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (481, 59, 13, CONVERT(DATE, '2024-08-30', 23), 12.16, 'Active', NULL);
--INSERT INTO enrollments VALUES (482, 266, 20, CONVERT(DATE, '2023-01-25', 23), 1.69, 'Completed', 1.7);
--INSERT INTO enrollments VALUES (483, 90, 7, CONVERT(DATE, '2024-07-01', 23), 46.82, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (484, 122, 14, CONVERT(DATE, '2023-07-14', 23), 52.39, 'Completed', 1.9);
--INSERT INTO enrollments VALUES (485, 129, 9, CONVERT(DATE, '2023-05-09', 23), 44.16, 'Completed', 1.3);
--INSERT INTO enrollments VALUES (486, 180, 4, CONVERT(DATE, '2022-06-02', 23), 67.37, 'Active', NULL);
--INSERT INTO enrollments VALUES (487, 125, 8, CONVERT(DATE, '2023-08-21', 23), 15.3, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (488, 226, 13, CONVERT(DATE, '2024-08-18', 23), 51.38, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (489, 63, 15, CONVERT(DATE, '2024-11-12', 23), 99.9, 'Active', NULL);
--INSERT INTO enrollments VALUES (490, 41, 15, CONVERT(DATE, '2024-09-06', 23), 26.61, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (491, 242, 7, CONVERT(DATE, '2022-09-07', 23), 65.39, 'Completed', 1.8);
--INSERT INTO enrollments VALUES (492, 151, 18, CONVERT(DATE, '2022-09-04', 23), 80.37, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (493, 174, 16, CONVERT(DATE, '2023-05-12', 23), 4.27, 'Completed', 1.6);
--INSERT INTO enrollments VALUES (494, 145, 6, CONVERT(DATE, '2023-02-22', 23), 89.44, 'Active', NULL);
--INSERT INTO enrollments VALUES (495, 54, 8, CONVERT(DATE, '2024-09-30', 23), 34.93, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (496, 107, 10, CONVERT(DATE, '2023-04-08', 23), 24.59, 'Completed', 2.8);
--INSERT INTO enrollments VALUES (497, 80, 9, CONVERT(DATE, '2022-02-10', 23), 17.3, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (498, 97, 14, CONVERT(DATE, '2024-10-05', 23), 0.66, 'Active', NULL);
--INSERT INTO enrollments VALUES (499, 78, 10, CONVERT(DATE, '2022-09-26', 23), 80.45, 'Dropped', NULL);
--INSERT INTO enrollments VALUES (500, 221, 3, CONVERT(DATE, '2024-07-16', 23), 60.72, 'Active', NULL);

-- Fetch students data
SELECT
	first_name,
	last_name,
	gender,
	date_of_birth,
	email,
	city,
	registration_date
FROM
	dbo.students;

-- Admission trends by city
SELECT
	city,
	COUNT(*) 'Total Students'
FROM
	dbo.students
GROUP BY
	city
ORDER BY
	COUNT(*) DESC;

-- Distinct country
SELECT
	DISTINCT country
FROM
	dbo.students;

-- Remove country column

ALTER TABLE dbo.students
DROP COLUMN country;
GO

-- Number of students registered per year
SELECT
	YEAR(registration_date) Registration_Year,
	COUNT(*) 'Total Students'
FROM
	dbo.students
GROUP BY
	YEAR(registration_date)
ORDER BY
	YEAR(registration_date);

-- Total Students by Gender
SELECT
	gender,
	COUNT(*) 'Total Students'
FROM
	dbo.students
GROUP BY
	gender
ORDER BY
	COUNT(*) DESC;

-- SELECT TOP 2 * FROM courses;  

-- List of instructors
SELECT
	DISTINCT instructor_name
FROM
	dbo.courses;

-- Total courses by instructors
SELECT
	instructor_name 'Instructor',
	COUNT(course_id) 'Total Courses'
FROM
	dbo.courses
GROUP BY
	instructor_name
ORDER BY
	COUNT(course_id) DESC;


-- List of category

SELECT
	DISTINCT category
FROM
	dbo.courses;

-- Number of courses in each category
SELECT
	category 'Category',
	COUNT(course_id) 'Total Courses'
FROM
	dbo.courses
GROUP BY
	category
ORDER BY
	COUNT(course_id) DESC;
;

-- Average Course Price by Category
SELECT
	category 'Category',
	AVG(price) 'Average Price'
FROM	
	dbo.courses
GROUP BY
	category
ORDER BY
AVG(price) DESC;

-- Get all the courses detail in the Python category
SELECT
	course_id,
	course_name,
	instructor_name,
	price,
	course_level
FROM
	dbo.courses
WHERE
	category = 'Python'
ORDER BY
	price DESC;
-- Types of Course Levels
SELECT
	DISTINCT course_level
FROM
	dbo.courses;

-- Total Courses by level
SELECT
	course_level 'Course Level',
	COUNT(course_id) 'Total Courses'
FROM
	dbo.courses
GROUP BY
	course_level
ORDER BY
	COUNT(course_id) DESC;

-- SELECT TOP 2 * FROM enrollments;
-- Get all the details of the enrollments where progress percent is less than 55%

SELECT
    enrollment_id,
    student_id,
    course_id,
    progress_percent
FROM
    dbo.enrollments
WHERE
    progress_percent < 55;