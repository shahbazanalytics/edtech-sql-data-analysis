/*
===============================================================================
 Project      : EdTech SQL Analytics
 File         : 02_load_data.sql
 Author       : Mohammad Shahbaz Alam
 Database     : Microsoft SQL Server
 Description  : Loads CSV datasets into EdTechDB using BULK INSERT.
===============================================================================
*/

USE EdTechDB;



-- ============================================================================
-- IMPORTANT
-- Update the file paths below to match your local machine.
-- Example:
-- C:\Users\Shahbaz\Documents\EdTech\dataset\students.csv
-- ============================================================================

-- ============================================================================
-- Load Students
-- ============================================================================

PRINT 'Loading Students...';

BULK INSERT students
FROM 'C:\Users\aa\Desktop\edtech_project_refactor\edtech-sql-data-analysis\datasets\csv\students.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    FORMAT = 'CSV',
    TABLOCK
);

PRINT 'Students Loaded Successfully.';


-- ============================================================================
-- Load Instructors
-- ============================================================================

PRINT 'Loading Instructors...';

BULK INSERT instructors
FROM 'C:\Users\aa\Desktop\edtech_project_refactor\edtech-sql-data-analysis\datasets\csv\instructors.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    FORMAT = 'CSV',
    TABLOCK
);

PRINT 'Instructors Loaded Successfully.';


-- ============================================================================
-- Load Courses
-- ============================================================================

PRINT 'Loading Courses...';

BULK INSERT courses
FROM 'C:\Users\aa\Desktop\edtech_project_refactor\edtech-sql-data-analysis\datasets\csv\courses.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    FORMAT = 'CSV',
    TABLOCK
);

PRINT 'Courses Loaded Successfully.';


-- ============================================================================
-- Load Enrollments
-- ============================================================================

PRINT 'Loading Enrollments...';

BULK INSERT enrollments
FROM 'C:\Users\aa\Desktop\edtech_project_refactor\edtech-sql-data-analysis\datasets\csv\enrollments.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    FORMAT = 'CSV',
    TABLOCK
);

PRINT 'Enrollments Loaded Successfully.';


-- ============================================================================
-- Verify Data Load
-- ============================================================================

PRINT 'Verifying Loaded Records...';

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


PRINT 'Data Load Completed Successfully.';