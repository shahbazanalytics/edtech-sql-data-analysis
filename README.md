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

## 📁 Project Structure

```text
edtech-sql-data-analysis/
│
├── datasets/
│   ├── csv/
│   ├── processed/
│   └── raw/
│
├── docs/
│   ├── business_recommendations.md
│   ├── data_dictionary.md
│   └── metric_definitions.md
│
├── sql/
│   ├── views/
│   ├── 01_database_setup/
│   ├── 02_load_data/
│   ├── 03_data_validations/
│   ├── 04_revenue_analysis/
│   ├── 05_student_analysis/
│   ├── 06_course_analysis/
│   ├── 07_instructor_analysis/
│   └── 08_business_questions/
│
├── banner_edtech_sql.png
├── database_schema.md
├── er_diagram.png
└── README.md

---

datasets/

Contains the datasets used throughout the project.

csv/ — CSV datasets used for analysis and dashboard development.
processed/ — Cleaned and prepared datasets.
raw/ — Original datasets before processing.

---

docs/

Contains supporting project documentation.

business_recommendations.md — Business findings and recommendations from the analysis.
data_dictionary.md — Detailed table and column definitions.
metric_definitions.md — Definitions and calculation logic for key metrics.

---

sql/

SQL scripts are organized according to the analysis workflow.

views/ — Reusable SQL views used for reporting and analysis.
01_database_setup/ — Database and table creation.
02_load_data/ — Data loading scripts.
03_data_validations/ — Data quality and validation checks.
04_revenue_analysis/ — Revenue-related analysis.
05_student_analysis/ — Student and engagement analysis.
06_course_analysis/ — Course performance analysis.
07_instructor_analysis/ — Instructor performance analysis.
08_business_questions/ — Analysis built around specific business questions.

---

🧠 Dataset Overview

The analysis is built around four core tables:

Table	Key Columns	Description
students	student_id, registration_date, gender, city	Student profile and registration information.
instructors	instructor_id, instructor_name, specialization, experience_years	Instructor profiles, expertise and teaching experience.
courses	course_id, course_name, category, course_level, price, instructor_id	Course details, pricing, difficulty level and instructor relationships.
enrollments	enrollment_id, student_id, course_id, enrollment_date, progress_percent	Student-course enrollments and learner progress.

For detailed column definitions and business meanings, see docs/data_dictionary.md.

The database relationships are documented in database_schema.md and visualized in er_diagram.png.

---

📊 Key Metrics
Metric	Definition
Total Students	Distinct students represented in the enrollment data
Total Enrollments	Total enrollment records
Total Courses	Courses available in the catalog
Completion Rate	Percentage of enrollments with 100% progress
Average Progress	Average progress across all enrollments
Revenue	Course price multiplied by enrollment count

---

Metric definitions and calculation logic are documented in docs/metric_definitions.md.

---


🔍 SQL Analysis
👨‍🎓 Student Analysis

The student analysis looks at enrollment behavior, engagement and learner progress.

Key areas include:

Student registration trends
Student distribution by city
Gender distribution
Enrollment behavior
Average progress
Course completion
Low-engagement students

📚 Course Analysis

The course analysis focuses on course demand, pricing and learner performance.

Key areas include:

Course count by category
Course distribution by level
Average course price by category
Course enrollment performance
Completion performance
Top-performing courses

👨‍🏫 Instructor Analysis

Instructor performance is evaluated using both learner and revenue metrics.

Key areas include:

Courses offered by instructor
Total enrollments
Revenue generated
Average learner progress
Instructor performance comparison

💰 Revenue Analysis

Revenue analysis examines how course demand translates into platform revenue.

Key areas include:

Revenue by category
Revenue by course
Revenue by instructor
Enrollment contribution
Revenue trends over time

🧠 Business Questions

The SQL analysis is structured around practical business questions, including:

How are enrollments changing over time?
Which course categories generate the most revenue?
Which courses attract the most students?
Which instructors generate the highest revenue?
Which courses have stronger completion rates?
Where is learner engagement relatively low?
How does course level relate to enrollment and completion?
Which areas of the platform could benefit from further attention?

The detailed SQL work for these questions is available under sql/08_business_questions/.

---

📈 Tableau Executive Dashboard

The Tableau dashboard is currently in progress.

The objective is to provide an executive-level view of the platform's student, course, instructor and revenue performance.

Current Dashboard Components
Total Students
Total Enrollments
Completion Rate
Average Progress
Total Revenue
Monthly Revenue Trend
Revenue by Category
Revenue by Instructor
Enrollment Trends
Course Performance
Instructor Performance
Planned Filters
Year
Month
Instructor
Course Level

The dashboard is currently being refined for:

Layout and spacing
Consistent dark-theme styling
KPI and chart formatting
Interactive filters
Tooltip clarity
Final visual QA

Tableau Public: Coming soon

The final Tableau Public link will be added once the dashboard has completed its final QA and is published.

🚧 Project Status
Component	Status
Database setup	✅ Complete
Data loading	✅ Complete
Data validation	✅ Complete
Student analysis	✅ Complete
Course analysis	✅ Complete
Instructor analysis	✅ Complete
Revenue analysis	✅ Complete
Business questions	✅ Complete
Business recommendations	✅ Complete
Tableau KPI development	✅ Complete
Tableau chart development	✅ Complete
Dashboard layout refinement	🔄 In Progress
Interactive filters	🔄 In Progress
Dashboard QA	⏳ Pending
Tableau Public publication	⏳ Pending

---

💡 Business Recommendations

The analysis produces recommendations around:

Improving engagement in lower-performing courses
Identifying high-performing course categories
Understanding instructor-level performance
Monitoring enrollment and revenue trends
Improving completion performance
Using learner progress to identify potential engagement issues

Detailed recommendations are available in docs/business_recommendations.md.

---

🎯 Project Goal

The project demonstrates how SQL and visualization tools can be combined to move from raw operational data to actionable business insights.

Data → SQL Database → Validation → Analysis → Business Questions → Insights → Tableau Dashboard
