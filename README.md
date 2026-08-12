# 🎓 EdTech SQL Data Analysis

<p align="center">
  <img src="banner_edtech_sql.png" alt="EdTech SQL Data Analysis Banner" width="100%">
</p>

<h1 align="center">🎓 EdTech SQL Data Analysis</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Database-Microsoft%20SQL%20Server-red?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Visualization-Tableau-17A2B8?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Focus-Data%20Analysis-green?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Concept-CTE%20%26%20Joins-orange?style=for-the-badge" />
</p>

> 🟡 **Project Status: Dashboard in Progress**
>
> The SQL analytics, data validation, business analysis, and core insights are complete.  
> The Tableau Executive Dashboard is currently being finalized, including visual design, layout refinement, interactive filters, and dashboard QA.

---

## 📌 Project Overview

This project presents an end-to-end data analysis of an **EdTech platform** using **Microsoft SQL Server and Tableau**.

The project analyzes students, courses, instructors, and enrollments to uncover insights related to:

- Student enrollment and engagement
- Course performance
- Completion and learner progress
- Revenue performance
- Category performance
- Instructor performance
- Enrollment and revenue trends

The project follows a business-oriented analytics workflow, starting from data preparation and SQL analysis and progressing toward an executive-level Tableau dashboard.

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| **Microsoft SQL Server** | Database management and SQL analysis |
| **SQL** | Data transformation, validation, aggregation and analytics |
| **Tableau** | Interactive dashboard and data visualization |
| **GitHub** | Version control and project documentation |

---

## 📁 Project Structure

```text
edtech-sql-data-analysis/
│
├── 📂 datasets/
│   ├── 📂 csv/
│   ├── 📂 processed/
│   └── 📂 raw/
│
├── 📂 docs/
│   ├── business_recommendations.md
│   ├── data_dictionary.md
│   └── metric_definitions.md
│
├── 📂 sql/
│   ├── 📂 views/
│   │
│   ├── 📂 01_database_setup/
│   ├── 📂 02_load_data/
│   ├── 📂 03_data_validations/
│   ├── 📂 04_revenue_analysis/
│   ├── 📂 05_student_analysis/
│   ├── 📂 06_course_analysis/
│   ├── 📂 07_instructor_analysis/
│   └── 📂 08_business_questions/
│
├── 🖼️ banner_edtech_sql.png
├── 🖼️ er_diagram.png
└── 📄 README.md

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

| Column Name      |  Description                                                |
|------------------|-------------------------------------------------------------|
| course_id        |   Unique course identifier                                  |
| course_name      |   Course title                                              |
| category         |   Category or domain (e.g., Python, Web Dev)                |
| course_level     |   Level (Beginner/Intermediate/Advanced)                    |
| price            |   Course price in INR                                       |
| instructor_id    |   Foreign key → `instructors.instructor_id`                 |

### 4️⃣ Enrollments

| Column | Description |
|---|---|
| `enrollment_id` | Unique enrollment identifier |
| `student_id` | Foreign key → `students.student_id` |
| `course_id` | Foreign key → `courses.course_id` |
| `enrollment_date` | Enrollment date |
| `progress_percent` | Course progress percentage (0–100%) |

---

## 📊 Key Metrics

| Metric | Definition |
|---|---|
| **Total Students** | Distinct students represented in the enrollment data |
| **Total Enrollments** | Total enrollment records |
| **Total Courses** | Courses available in the catalog |
| **Completion Rate** | Percentage of enrollments reaching 100% progress |
| **Average Progress** | Average progress percentage across enrollments |
| **Revenue** | Course price × enrollment count |

---

## 🔍 SQL Analysis Performed

### 🧩 Student Analysis

- Student demographic analysis
- Registration trends by year
- Student distribution by city
- Gender distribution
- Student enrollment and engagement analysis
- Average progress and completion analysis

### 📘 Course Analysis

- Course count by category
- Course count by difficulty level
- Average course price by category
- Most expensive courses
- Course performance analysis
- Course enrollment and completion performance

### 👨‍🏫 Instructor Analysis

- Total courses per instructor
- Enrollment performance by instructor
- Revenue generated by instructor
- Instructor performance comparison
- Revenue and enrollment relationship

### 🧾 Enrollment Analysis

- Total enrollments
- Enrollment trends over time
- Top courses by enrollment
- Student progress analysis
- Completion performance
- Low-progress enrollment analysis

---

## 🧠 Advanced SQL Insights

### 1️⃣ Student Engagement Analysis

Uses **CTEs (Common Table Expressions)** to evaluate student engagement across enrolled courses.

Key metrics include:

- Total courses enrolled
- Average progress
- Completed courses
- Completion rate

### 2️⃣ Revenue Analysis

Analyzes revenue across:

- Course categories
- Instructors
- Courses

This helps identify the categories, courses and instructors contributing most to platform revenue.

### 3️⃣ Instructor Performance

Combines enrollment and revenue metrics to identify instructors with stronger commercial and learner engagement performance.

---

# 📊 Tableau Executive Dashboard

The Tableau dashboard is currently **in progress**.

The dashboard is being designed as an executive-level view of the EdTech platform, combining key business KPIs with trends and performance analysis.

### Current Dashboard Components

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

### Interactive Filters

The dashboard is being designed with filters for:

- **Year**
- **Month**
- **Instructor**
- **Course Level**

### Dashboard Status

| Component | Status |
|---|---|
| KPI Cards | ✅ Complete |
| Revenue Analysis | ✅ Complete |
| Enrollment Analysis | ✅ Complete |
| Course Performance | 🔄 Refinement |
| Instructor Performance | 🔄 Refinement |
| Dashboard Layout | 🔄 In Progress |
| Interactive Filters | 🔄 In Progress |
| Visual QA | ⏳ Pending |
| Tableau Public Publication | ⏳ Pending |

> **Note:** The Tableau dashboard is being finalized and will be published to Tableau Public once the visual design and QA are complete.

**Tableau Public:** Coming soon

---

## 🚧 Project Roadmap

- [x] Database design and setup
- [x] Data loading
- [x] Data validation
- [x] Student analysis
- [x] Course analysis
- [x] Instructor analysis
- [x] Enrollment analysis
- [x] Revenue analysis
- [x] Advanced SQL insights
- [x] Business recommendations
- [x] Tableau KPI development
- [x] Tableau visualization development
- [ ] Final dashboard layout refinement
- [ ] Interactive filter refinement
- [ ] Dashboard QA
- [ ] Publish dashboard to Tableau Public

---

💡 Business Questions

This project focuses on answering practical business questions such as:

- How is student enrollment changing over time?
- Which course categories generate the most revenue?
- Which courses attract the most enrollments?
- Which instructors generate the highest revenue?
- Which courses have stronger completion performance?
- Where is learner engagement weak?
- How does course level relate to enrollment and completion?
- Which areas of the platform should receive greater attention?

---

🎯 Key Takeaway

The project demonstrates an end-to-end analytics workflow:

Raw Data → SQL Database → Data Validation → SQL Analysis → Business Insights → Tableau Dashboard

USE EdTechDB;
GO
