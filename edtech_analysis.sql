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
    
-- Total enrollments
SELECT
    COUNT(enrollment_id) 'Total Enrollments'
FROM
    dbo.enrollments;

-- Top 5 courses by enrollment
SELECT
    TOP 5
    cours.course_name 'Course Name',
    COUNT(enrol.enrollment_id) 'Total Enrollments'
FROM
    dbo.courses cours
JOIN
    dbo.enrollments enrol
ON
    cours.course_id = enrol.course_id
GROUP BY
    cours.course_name
ORDER BY
    COUNT(enrol.enrollment_id) DESC;
    
-- Monthly Enrollments Trends
SELECT
    DATENAME(month,enrollment_date) 'Month of Enrollment',
    COUNT(enrollment_id) 'Total Enrollments'
FROM
    dbo.enrollments
GROUP BY
    MONTH(enrollment_date),
    DATENAME(month, enrollment_date)
ORDER BY
    MONTH(enrollment_date);
    
-- Enrollments by Age Group and Enrollment Year

SELECT
    YEAR(e.enrollment_date) AS Enrollment_Year,
    CASE 
        WHEN DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date)
             - CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date), s.date_of_birth) > e.enrollment_date THEN 1 ELSE 0 END < 20 THEN 'Below 20'
        WHEN DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date)
             - CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date), s.date_of_birth) > e.enrollment_date THEN 1 ELSE 0 END BETWEEN 20 AND 25 THEN '20-25'
        WHEN DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date)
             - CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date), s.date_of_birth) > e.enrollment_date THEN 1 ELSE 0 END BETWEEN 26 AND 30 THEN '26-30'
        WHEN DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date)
             - CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date), s.date_of_birth) > e.enrollment_date THEN 1 ELSE 0 END BETWEEN 31 AND 35 THEN '31-35'
        ELSE 'Above 35'
    END AS Age_Group,
    COUNT(e.enrollment_id) AS Total_Enrollments
FROM
    dbo.enrollments e
JOIN
    dbo.students s ON e.student_id = s.student_id
GROUP BY
    YEAR(e.enrollment_date),
    CASE 
        WHEN DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date)
             - CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date), s.date_of_birth) > e.enrollment_date THEN 1 ELSE 0 END < 20 THEN 'Below 20'
        WHEN DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date)
             - CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date), s.date_of_birth) > e.enrollment_date THEN 1 ELSE 0 END BETWEEN 20 AND 25 THEN '20-25'
        WHEN DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date)
             - CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date), s.date_of_birth) > e.enrollment_date THEN 1 ELSE 0 END BETWEEN 26 AND 30 THEN '26-30'
        WHEN DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date)
             - CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date), s.date_of_birth) > e.enrollment_date THEN 1 ELSE 0 END BETWEEN 31 AND 35 THEN '31-35'
        ELSE 'Above 35'
    END
ORDER BY
    Enrollment_Year,
    MIN(DATEDIFF(YEAR, s.date_of_birth, e.enrollment_date));
