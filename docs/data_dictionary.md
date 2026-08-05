# 📖 Data Dictionary

## Project: EdTech SQL Analytics
**Database:** EdTechDB  
**Database Platform:** Microsoft SQL Server

---

# Overview

This document describes the structure, purpose, and business meaning of every table and column used in the **EdTech SQL Analytics** project.

The database models an online learning platform where students enroll in courses taught by instructors. The dataset is used for revenue analysis, student behavior analysis, course performance analysis, and instructor performance reporting.

---

# Entity Relationship Summary

| Relationship | Cardinality |
|-------------|-------------|
| Students → Enrollments | One-to-Many |
| Courses → Enrollments | One-to-Many |
| Instructors → Courses | One-to-Many |

---

# Table: students

### Purpose

Stores demographic and registration information for each student registered on the learning platform.

| Column | Data Type | Constraints | Description | Example |
|---------|-----------|-------------|-------------|---------|
| student_id | INT | Primary Key | Unique identifier for each student | 101 |
| first_name | VARCHAR(50) | NOT NULL | Student's first name | John |
| last_name | VARCHAR(50) | NOT NULL | Student's last name | Smith |
| gender | VARCHAR(10) | NULL | Student gender | Male |
| date_of_birth | DATE | NULL | Student's date of birth | 1998-05-20 |
| email | VARCHAR(100) | UNIQUE, NOT NULL | Student email address | john@email.com |
| city | VARCHAR(50) | NULL | Student's city | Mumbai |
| registration_date | DATE | NOT NULL | Date student registered on platform | 2024-02-10 |

---

# Table: instructors

### Purpose

Stores instructor information for all educators teaching courses on the platform.

| Column | Data Type | Constraints | Description | Example |
|---------|-----------|-------------|-------------|---------|
| instructor_id | INT | Primary Key | Unique instructor identifier | 15 |
| instructor_name | VARCHAR(100) | NOT NULL | Full instructor name | Rahul Sharma |
| specialization | VARCHAR(100) | NULL | Primary teaching domain | Data Science |
| experience_years | INT | NULL | Years of teaching experience | 8 |
| email | VARCHAR(100) | UNIQUE | Instructor email | rahul@email.com |
| join_date | DATE | NULL | Date instructor joined platform | 2022-06-15 |

---

# Table: courses

### Purpose

Stores information about every course available on the learning platform.

| Column | Data Type | Constraints | Description | Example |
|---------|-----------|-------------|-------------|---------|
| course_id | INT | Primary Key | Unique course identifier | 501 |
| course_name | VARCHAR(100) | NOT NULL | Course title | SQL for Beginners |
| instructor_id | INT | Foreign Key | Instructor teaching the course | 15 |
| category | VARCHAR(50) | NULL | Course category | SQL |
| course_level | VARCHAR(20) | NULL | Difficulty level | Beginner |
| price | DECIMAL(10,2) | NULL | Course price (INR) | 2999.00 |
| published_date | DATE | NULL | Date course was published | 2024-01-05 |

---

# Table: enrollments

### Purpose

Stores enrollment records linking students to courses and tracks their learning progress.

| Column | Data Type | Constraints | Description | Example |
|---------|-----------|-------------|-------------|---------|
| enrollment_id | INT | Primary Key | Unique enrollment identifier | 1001 |
| student_id | INT | Foreign Key | Student enrolled in course | 101 |
| course_id | INT | Foreign Key | Course enrolled by student | 501 |
| enrollment_date | DATE | NOT NULL | Date of enrollment | 2024-03-15 |
| progress_percent | INT | NOT NULL | Course completion progress (0–100%) | 75 |
| completion_status | VARCHAR(20) | NULL | Current course status | In Progress |
| completion_date | DATE | NULL | Date course was completed | 2024-04-28 |
| rating | DECIMAL(2,1) | NULL | Student rating after course completion | 4.8 |

---

# Business Rules

### Students

- Each student has a unique Student ID.
- Email addresses must be unique.
- A student can enroll in multiple courses.

---

### Instructors

- One instructor can teach multiple courses.
- Every course must have exactly one instructor.

---

### Courses

- Each course belongs to one category.
- Every course has one instructor.
- Course price cannot be negative.

---

### Enrollments

- A student may enroll in multiple courses.
- Each enrollment belongs to one student and one course.
- Progress percentage must be between 0 and 100.
- Ratings are provided only after course completion.
- Completion Date should be populated only when the course status is **Completed**.

---

# Data Quality Rules

| Column | Rule |
|---------|------|
| email | Must be unique |
| price | Greater than 0 |
| progress_percent | Between 0 and 100 |
| rating | Between 1.0 and 5.0 |
| completion_status | Enrolled, In Progress, Completed, Dropped |
| completion_date | NULL unless completion_status = Completed |

---

# Key Business Metrics Supported

The database supports the following business metrics:

- Total Revenue
- Monthly Revenue
- Revenue by Category
- Revenue by Instructor
- Revenue by Course
- Student Enrollment Trend
- Active Students
- Course Completion Rate
- Average Course Rating
- Best-selling Courses
- Instructor Performance
- Student Progress Analysis

---

# Notes

- Database Platform: Microsoft SQL Server
- Dataset Type: Synthetic
- Domain: Online Learning (EdTech)
- Primary Use Case: SQL Analytics & Tableau Dashboard Development