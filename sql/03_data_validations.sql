/*
===============================================================================
 Project      : EdTech SQL Analytics
 File         : 03_data_validation.sql
 Author       : Mohammad Shahbaz Alam
 Database     : Microsoft SQL Server
 Description  : Validates data quality and integrity before performing business
                analysis and reporting.
===============================================================================
*/

USE EdTechDB;
GO

-- ============================================================================
-- Record Count Verification
-- ============================================================================

SELECT 'Students' AS TableName, COUNT(*) AS RecordCount
FROM students

UNION ALL

SELECT 'Instructors', COUNT(*)
FROM instructors

UNION ALL

SELECT 'Courses', COUNT(*)
FROM courses

UNION ALL

SELECT 'Enrollments', COUNT(*)
FROM enrollments;


-- ============================================================================
-- Duplicate Primary Keys
-- ============================================================================

SELECT student_id, COUNT(*) AS DuplicateCount
FROM students
GROUP BY student_id
HAVING COUNT(*) > 1;

SELECT instructor_id, COUNT(*) AS DuplicateCount
FROM instructors
GROUP BY instructor_id
HAVING COUNT(*) > 1;

SELECT course_id, COUNT(*) AS DuplicateCount
FROM courses
GROUP BY course_id
HAVING COUNT(*) > 1;

SELECT enrollment_id, COUNT(*) AS DuplicateCount
FROM enrollments
GROUP BY enrollment_id
HAVING COUNT(*) > 1;


-- ============================================================================
-- Duplicate Student Emails
-- ============================================================================

SELECT
    email,
    COUNT(*) AS DuplicateCount
FROM students
GROUP BY email
HAVING COUNT(*) > 1;

-- ============================================================================
-- Duplicate Instructor Emails
-- ============================================================================

SELECT
    email,
    COUNT(*) AS DuplicateCount
FROM instructors
GROUP BY email
HAVING COUNT(*) > 1;


-- ============================================================================
-- Mandatory Field Validation
-- ============================================================================

SELECT *
FROM students
WHERE first_name IS NULL
   OR last_name IS NULL
   OR email IS NULL
   OR registration_date IS NULL;

SELECT *
FROM instructors
WHERE instructor_name IS NULL
   OR email IS NULL;

SELECT *
FROM courses
WHERE course_name IS NULL
   OR instructor_id IS NULL;

SELECT *
FROM enrollments
WHERE student_id IS NULL
   OR course_id IS NULL
   OR enrollment_date IS NULL
   OR progress_percent IS NULL;

-- ============================================================================
-- Progress Validation
-- ============================================================================

SELECT *
FROM enrollments
WHERE progress_percent < 0
   OR progress_percent > 100;

-- ============================================================================
-- Rating Validation
-- ============================================================================

SELECT *
FROM enrollments
WHERE rating IS NOT NULL
  AND (rating < 1 OR rating > 5);

-- ============================================================================
-- Course Price Validation
-- ============================================================================

SELECT *
FROM courses
WHERE price < 0;

-- ============================================================================
-- Completion Status Validation
-- ============================================================================

SELECT *
FROM enrollments
WHERE completion_status NOT IN
(
'Active',
'In Progress',
'Completed',
'Not Started'
);

-- ============================================================================
-- Future Date Validation
-- ============================================================================

SELECT *
FROM students
WHERE registration_date > GETDATE();

SELECT *
FROM instructors
WHERE join_date > GETDATE();

SELECT *
FROM courses
WHERE published_date > GETDATE();

SELECT *
FROM enrollments
WHERE enrollment_date > GETDATE();


-- ============================================================================
-- Orphan Student Records
-- ============================================================================

SELECT e.*
FROM enrollments e
LEFT JOIN students s
ON e.student_id = s.student_id
WHERE s.student_id IS NULL;

-- ============================================================================
-- Orphan Course Records
-- ============================================================================

SELECT e.*
FROM enrollments e
LEFT JOIN courses c
ON e.course_id = c.course_id
WHERE c.course_id IS NULL;

-- ============================================================================
-- Orphan Instructor Records
-- ============================================================================

SELECT c.*
FROM courses c
LEFT JOIN instructors i
ON c.instructor_id = i.instructor_id
WHERE i.instructor_id IS NULL;


-- ============================================================================
-- Completed Courses Should Have 100% Progress
-- ============================================================================

SELECT *
FROM enrollments
WHERE completion_status = 'Completed'
  AND progress_percent <> 100;