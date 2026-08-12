# 🎓 EdTech SQL Data Analysis

<p align="center">
  <img src="banner_edtech_sql.png" alt="EdTech SQL Data Analysis Banner" width="100%">
</p>

<h1 align="center">EdTech SQL Data Analysis</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Database-Microsoft%20SQL%20Server-red?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Visualization-Tableau-17A2B8?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Focus-Data%20Analysis-green?style=for-the-badge" />
</p>

> 🟡 **Project Status: Dashboard in Progress**
>
> The database, data validation, SQL analysis, business questions, and core insights are complete. The Tableau Executive Dashboard is currently being finalized, with the focus on layout, visual consistency, interactive filters, and final QA.

---

## 📌 Project Overview

This project analyzes data from a fictional EdTech platform to understand how students engage with courses, how courses and instructors perform, and what drives platform revenue.

The analysis covers four core areas:

- Student enrollment and engagement
- Course performance and completion
- Instructor performance
- Revenue and enrollment trends

The project follows an end-to-end analytics workflow, starting with data preparation and SQL-based analysis and moving into Tableau for interactive reporting.

The goal is to turn raw operational data into insights that could support decisions around **course strategy, learner engagement, instructor performance, and revenue growth**.

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| **Microsoft SQL Server** | Database management and analytical SQL |
| **SQL** | Data validation, transformation, analysis and business questions |
| **Tableau** | Interactive dashboards and data visualization |
| **GitHub** | Version control and project documentation |

---

## 🧠 Dataset Overview

The project contains four primary entities:

### 1️⃣ Students

| Column | Description |
|---|---|
| `student_id` | Unique student identifier |
| `first_name`, `last_name` | Student name |
| `gender` | Male / Female / Other |
| `date_of_birth` | Student's birth date |
| `email` | Contact email |
| `city` | City of registration |
| `registration_date` | Date student registered |

### 2️⃣ Instructors

| Column | Description |
|---|---|
| `instructor_id` | Unique instructor identifier |
| `instructor_name` | Instructor full name |
| `specialization` | Area of expertise |
| `experience_years` | Teaching experience in years |

### 3️⃣ Courses

| Column | Description |
|---|---|
| `course_id` | Unique course identifier |
| `course_name` | Course title |
| `category` | Course domain |
| `course_level` | Beginner / Intermediate / Advanced |
| `price` | Course price in INR |
| `published_date` | Course publication date |
| `instructor_id` | Foreign key → `instructors.instructor_id` |

### 4️⃣ Enrollments

| Column | Description |
|---|---|
| `enrollment_id` | Unique enrollment identifier |
| `student_id` | Foreign key → `students.student_id` |
| `course_id` | Foreign key → `courses.course_id` |
| `enrollment_date` | Enrollment date |
| `progress_percent` | Course progress percentage (0–100%) |

For detailed column definitions and business meanings, see docs/data_dictionary.md.

The database relationships are documented in database_schema.md and visualized in er_diagram.png.

---

🧠 Business Questions

The SQL analysis is structured around practical business questions, including:

 - How are enrollments changing over time?
 - Which course categories generate the most revenue?
 - Which courses attract the most students?
 - Which instructors generate the highest revenue?
 - Which courses have stronger completion rates?
 - Where is learner engagement relatively low?
 - How does course level relate to enrollment and completion?
 - Which areas of the platform could benefit from further attention?

The detailed SQL work for these questions is available under sql/08_business_questions/.

---

📈 Tableau Executive Dashboard

The Tableau dashboard is currently in progress.

The objective is to provide an executive-level view of the platform's student, course, instructor and revenue performance.

#### Current Dashboard Components

 - Total Students
 - Total Enrollments
 - Completion Rate
 - Average Progress
 - Total Revenue
 - Monthly Revenue Trend
 - Revenue by Category
 - Revenue by Instructor
 - Enrollment Trends
 - Course Performance
 - Instructor Performance

Tableau Public: Coming soon

The final Tableau Public link will be added once the dashboard has completed its final QA and is published.

---

💡  Business Recommendations

#### The analysis produces recommendations around:

 - Improving engagement in lower-performing courses
 - Identifying high-performing course categories
 - Understanding instructor-level performance
 - Monitoring enrollment and revenue trends
 - Improving completion performance
 - Using learner progress to identify potential engagement issues

Detailed recommendations are available in docs/business_recommendations.md.

---

🎯 Project Goal

The project demonstrates how SQL and visualization tools can be combined to move from raw operational data to actionable business insights.

Data → SQL Database → Validation → Analysis → Business Questions → Insights → Tableau Dashboard
