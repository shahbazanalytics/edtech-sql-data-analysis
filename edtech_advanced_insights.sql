-- Average progress vs Completion rate per student.  
-- Purpose:
--   To analyze how engaged each student is across all enrolled courses by calculating:
--      - Total courses enrolled
--      - Average progress across all courses
--      - Total number of completed courses
--      - Overall completion rate (%)

--  Use Case:
--   Helps identify top learners and students who need attention based on progress and completion data.

WITH StudentEngagement AS (
    SELECT
        s.student_id,
        CONCAT(s.first_name, ' ', s.last_name) AS name ,
        COUNT(e.enrollment_id) AS total_courses,
        AVG(e.progress_percent) AS avg_progress,
        SUM(CASE WHEN e.progress_percent = 100 THEN 1 ELSE 0 END) AS completed_courses
    FROM dbo.students s
    JOIN dbo.enrollments e ON s.student_id = e.student_id
    GROUP BY s.student_id, CONCAT(s.first_name, ' ', s.last_name)
)
SELECT
    name,
    total_courses,
    avg_progress,
    completed_courses,
    ROUND(completed_courses * 100.0 / NULLIF(total_courses, 0), 2) AS completion_rate
FROM StudentEngagement
ORDER BY completion_rate DESC;

-- Revenue by Instructor or Category
-- Purpose:
--   To evaluate which instructors and course categories generate the most revenue and attract 
--   the highest number of enrollments.

--  Use Case:
--   Useful for financial and operational decision-making — helps highlight top-performing instructors 
--   and profitable course segments.

WITH RevenueCTE AS (
    SELECT
        c.instructor_name,
        c.category,
        SUM(c.price) AS total_revenue,
        COUNT(e.enrollment_id) AS total_enrollments
    FROM dbo.courses c
    JOIN dbo.enrollments e ON c.course_id = e.course_id
    GROUP BY c.instructor_name, c.category
)
SELECT *
FROM RevenueCTE
ORDER BY total_revenue DESC;