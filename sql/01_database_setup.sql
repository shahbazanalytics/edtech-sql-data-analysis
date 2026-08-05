/*
===============================================================================
 Project      : EdTech SQL Analytics
 File         : 01_database_setup.sql
 Author       : Mohammad Shahbaz Alam
 Database     : Microsoft SQL Server
 Description  : Creates the EdTech Analytics database and all required tables.
===============================================================================
*/

-- ============================================================================
-- Create Database
-- ============================================================================

IF DB_ID('EdTechDB') IS NOT NULL
BEGIN
    DROP DATABASE EdTechDB;
END;
GO

CREATE DATABASE EdTechDB;
GO

USE EdTechDB;
GO

-- ============================================================================
-- Create Students Table
-- ============================================================================

CREATE TABLE students
(
    student_id INT PRIMARY KEY,

    first_name VARCHAR(50) NOT NULL,

    last_name VARCHAR(50) NOT NULL,

    gender VARCHAR(10),

    date_of_birth DATE,

    email VARCHAR(100) NOT NULL UNIQUE,

    city VARCHAR(50),

    registration_date DATE NOT NULL
);

GO

-- ============================================================================
-- Create Instructors Table
-- ============================================================================

CREATE TABLE instructors
(
    instructor_id INT PRIMARY KEY,

    instructor_name VARCHAR(100) NOT NULL,

    specialization VARCHAR(100),

    experience_years INT,

    email VARCHAR(100) UNIQUE,

    join_date DATE,

    CONSTRAINT CHK_ExperienceYears
        CHECK (experience_years >= 0)
);

GO

-- ============================================================================
-- Create Courses Table
-- ============================================================================

CREATE TABLE courses
(
    course_id INT PRIMARY KEY,

    course_name VARCHAR(100) NOT NULL,

    instructor_id INT NOT NULL,

    category VARCHAR(50),

    course_level VARCHAR(20),

    price DECIMAL(10,2),

    published_date DATE,

    CONSTRAINT CHK_CoursePrice
        CHECK (price >= 0),

    CONSTRAINT FK_Courses_Instructors
        FOREIGN KEY (instructor_id)
        REFERENCES instructors(instructor_id)
);

GO

-- ============================================================================
-- Create Enrollments Table
-- ============================================================================

CREATE TABLE enrollments
(
    enrollment_id INT PRIMARY KEY,

    student_id INT NOT NULL,

    course_id INT NOT NULL,

    enrollment_date DATE NOT NULL,

    progress_percent INT NOT NULL
        CONSTRAINT DF_Progress DEFAULT (0),

    completion_status VARCHAR(20)
        CONSTRAINT DF_CompletionStatus DEFAULT ('Enrolled'),

    rating DECIMAL(2,1),

    CONSTRAINT FK_Enrollments_Students
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    CONSTRAINT FK_Enrollments_Courses
        FOREIGN KEY (course_id)
        REFERENCES courses(course_id),

    CONSTRAINT CHK_Progress
        CHECK (progress_percent BETWEEN 0 AND 100),

    CONSTRAINT CHK_Rating
        CHECK (rating BETWEEN 1.0 AND 5.0 OR rating IS NULL),

    CONSTRAINT CHK_CompletionStatus
        CHECK (completion_status IN
        ('Enrolled',
         'In Progress',
         'Completed',
         'Dropped'))
);

GO

-- ============================================================================
-- Create Indexes
-- ============================================================================

CREATE INDEX IX_Students_City
ON students(city);

CREATE INDEX IX_Students_RegistrationDate
ON students(registration_date);

CREATE INDEX IX_Courses_Category
ON courses(category);

CREATE INDEX IX_Courses_Instructor
ON courses(instructor_id);

CREATE INDEX IX_Enrollments_Student
ON enrollments(student_id);

CREATE INDEX IX_Enrollments_Course
ON enrollments(course_id);

CREATE INDEX IX_Enrollments_Date
ON enrollments(enrollment_date);

CREATE INDEX IX_Enrollments_Status
ON enrollments(completion_status);

GO

PRINT 'EdTechDB database created successfully.';