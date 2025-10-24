# 🎓 EdTech SQL Data Analysis

<p align="center">
  <img src="A_digital_graphic_design_banner_features_the_title.png" alt="EdTech SQL Data Analysis Banner" width="100%">
</p>

<h1 align="center">🎓 EdTech SQL Data Analysis</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Database-Microsoft%20SQL%20Server-red?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Focus-Data%20Analysis-green?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Concept-CTE%20%26%20Joins-orange?style=for-the-badge" />
</p>

This project contains a complete end-to-end SQL-based data analysis of an **EdTech platform**.  
It includes data about **students**, **courses**, and **enrollments**, with analytical insights on trends, engagement, and course performance.

---

## 📁 Project Structure

| File | Description |
|------|--------------|
| `edtech_db.sql` | Microsoft SQL Server compatible dataset (300 students, 20 courses, 500 enrollments) |
| `edtech_analysis.sql` | SQL script containing analytical queries and insights |
| `edtech_advanced_insights.sql` | Advanced SQL analysis using CTEs for deeper engagement and revenue insights |
| `README.md` | Project documentation |

---

## 🧠 Dataset Overview

### 1️⃣ **students**
| Column | Description |
|--------|-------------|
| student_id | Unique student identifier |
| first_name, last_name | Student name |
| gender | Male/Female/Other |
| date_of_birth | Student’s birth date |
| email | Contact email |
| city | City of registration |
| registration_date | Date student registered |

### 2️⃣ **courses**
| Column | Description |
|--------|-------------|
| course_id | Unique course identifier |
| course_name | Course title |
| instructor_name | Instructor of the course |
| category | Course domain (e.g., Python, Data Science, Web Dev) |
| course_level | Beginner/Intermediate/Advanced |
| price | Course price in INR |

### 3️⃣ **enrollments**
| Column | Description |
|--------|-------------|
| enrollment_id | Unique enrollment ID |
| student_id | Foreign key → students.student_id |
| course_id | Foreign key → courses.course_id |
| enrollment_date | When the student enrolled |
| progress_percent | % completion of the course |

---

## 📊 Analytical Insights Performed

### 🧩 **Students Analysis**
- Fetch student data  
- Admission trends by city  
- Gender distribution of students  
- Yearly registration trends  
- Total students per city  
- Dropped redundant `country` column  

### 📘 **Courses Analysis**
- Instructor list and total courses per instructor  
- Courses count per category and course level  
- Average course price by category  
- Most expensive courses in Python category  
- Course level distribution  

### 🧾 **Enrollments Analysis**
- Total enrollments  
- Students with progress below 55%  
- Top 5 courses by enrollment count  
- Monthly enrollments trend (in calendar order)

## 🧠 Advanced SQL Insights (CTE-Based)

### 1️⃣ Average Progress vs Completion Rate per Student
- Uses **CTE (Common Table Expression)** to calculate each student’s engagement across all enrolled courses.
- Outputs:
  - Total courses enrolled
  - Average progress
  - Total completed courses
  - Completion rate (%)

### 2️⃣ Revenue by Instructor or Category
- Computes **total revenue** and **enrollment count** per instructor and course category.
- Helps identify top-performing instructors and profitable categories.

---

## 🚀 Setup Instructions

1. Open **Microsoft SQL Server Management Studio (SSMS)**  
2. Create or connect to a local database instance  
3. Run the following to set up the database:
   ```sql
   CREATE DATABASE EdTechDB;
   GO
   USE EdTechDB;
   GO
4. Execute `edtech_db.sql` to load all tables and data.
5. Execute `edtech_analysis.sql` to perform insights.
6. Run edtech_advanced_insights.sql for advanced analysis and CTE-based insights.
