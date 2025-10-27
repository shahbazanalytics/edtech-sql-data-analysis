-- ================================================================
-- 🎓 EdTech Dataset Incremental Update Script
-- Purpose: Add more instructors, realistic course completions,
--          and extra enrollments for enhanced analysis.
-- Database: EdTechDB
-- ================================================================

USE EdTechDB;
GO

-------------------------------------------------------------
-- 1️⃣ Add New Instructors & Their Courses
-------------------------------------------------------------


INSERT INTO dbo.courses (course_name, instructor_name, category, course_level, price)
VALUES
('Deep Learning with PyTorch', 'Ananya Verma', 'Data Science', 'Advanced', 2499.00),
('Power BI for Business Insights', 'Priya Bhatia', 'Data Analytics', 'Intermediate', 1599.00),
('Excel to Dashboard Masterclass', 'Karan Mehta', 'Data Analytics', 'Beginner', 999.00),
('ReactJS Frontend Bootcamp', 'Sneha Iyer', 'Web Development', 'Advanced', 2299.00),
('NodeJS for Beginners', 'Arjun Desai', 'Web Development', 'Beginner', 1499.00),
('Advanced Django APIs', 'Rohit Sharma', 'Web Development', 'Advanced', 1999.00),
('Data Storytelling with Tableau', 'Megha Kapoor', 'Data Visualization', 'Intermediate', 1799.00),
('AI for Everyone', 'Nikhil Jain', 'Artificial Intelligence', 'Beginner', 1299.00);

-------------------------------------------------------------
-- 2️⃣ Mark Random Students as Completed (Progress = 100)
-------------------------------------------------------------


UPDATE dbo.enrollments
SET progress_percent = 100
WHERE enrollment_id IN (
    SELECT TOP 100 enrollment_id
    FROM dbo.enrollments
    WHERE progress_percent BETWEEN 60 AND 99
    ORDER BY NEWID()
);

------------------------------------------------------------
-- 3️⃣ Add New Enrollments for Active Students
-------------------------------------------------------------


INSERT INTO dbo.enrollments (student_id, course_id, enrollment_date, progress_percent)
SELECT TOP 150
    s.student_id,
    c.course_id,
    DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()) AS enrollment_date,
    CAST(RAND(CHECKSUM(NEWID())) * 100 AS INT) AS progress_percent
FROM dbo.students s
CROSS JOIN dbo.courses c
WHERE (s.student_id + c.course_id) % 10 = 0
ORDER BY NEWID();