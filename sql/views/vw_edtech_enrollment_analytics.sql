CREATE OR ALTER VIEW dbo.vw_edtech_enrollment_analytics
AS
SELECT
    e.enrollment_id,
    e.student_id,
    e.course_id,
    e.enrollment_date,
    e.progress_percent,
    e.completion_status,
    e.rating,

    c.course_name,
    c.instructor_id,
    c.category,
    c.course_level,
    c.price,
    c.published_date,

    i.instructor_name,
    i.specialization,
    i.experience_years,

    s.first_name,
    s.last_name,
    s.gender,
    s.date_of_birth,
    s.city,
    s.registration_date

FROM dbo.enrollments AS e

LEFT JOIN dbo.courses AS c
ON e.course_id = c.course_id

LEFT JOIN dbo.instructors AS i
ON c.instructor_id = i.instructor_id

LEFT JOIN dbo.students AS s
 ON e.student_id = s.student_id;