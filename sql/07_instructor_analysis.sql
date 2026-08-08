-- 1.Which instructors generate the highest revenue?

WITH CourseRevenue AS
(
    SELECT
        c.course_id,
        c.instructor_id,
        c.price,
        COUNT(e.enrollment_id) AS total_enrollments,
        c.price * COUNT(e.enrollment_id) AS course_revenue
    FROM 
    	courses c
    JOIN 
    	enrollments e
    ON 
    	c.course_id = e.course_id
    GROUP BY
        c.course_id,
        c.instructor_id,
        c.price
)

SELECT
    i.instructor_id,
    i.instructor_name,
    SUM(cr.total_enrollments) AS total_enrollments,
    SUM(cr.course_revenue) AS total_revenue
FROM 
	instructors i
JOIN 
	CourseRevenue cr
ON 
	i.instructor_id = cr.instructor_id
GROUP BY
    i.instructor_id,
    i.instructor_name
ORDER BY
    total_revenue DESC;

-- 2.Students Per Instructor

SELECT
    i.instructor_id,
    i.instructor_name,
    COUNT(DISTINCT e.student_id) AS total_students
FROM instructors i
JOIN courses c
    ON i.instructor_id = c.instructor_id
JOIN enrollments e
    ON c.course_id = e.course_id
GROUP BY
    i.instructor_id,
    i.instructor_name
ORDER BY
    total_students DESC;

-- 3. Instructor Performance Summary

WITH InstructorCourseMetrics AS
(
    SELECT
        c.course_id,
        c.instructor_id,
        c.price,
        COUNT(e.enrollment_id) AS total_enrollments,
        COUNT(DISTINCT e.student_id) AS total_students,
        SUM(c.price) AS course_revenue
    FROM courses c
    LEFT JOIN enrollments e
        ON c.course_id = e.course_id
    GROUP BY
        c.course_id,
        c.instructor_id,
        c.price
)

SELECT
    i.instructor_id,
    i.instructor_name,

    COUNT(icm.course_id) AS total_courses,

    SUM(icm.total_enrollments) AS total_enrollments,

    SUM(icm.total_students) AS total_students,

    SUM(icm.course_revenue) AS total_revenue,

    ROUND(
        AVG(icm.total_enrollments * 1.0),
        2
    ) AS avg_enrollments_per_course,

    ROUND(
        SUM(icm.course_revenue * 1.0)
        / NULLIF(COUNT(icm.course_id), 0),
        2
    ) AS avg_revenue_per_course

FROM instructors i

LEFT JOIN InstructorCourseMetrics icm
    ON i.instructor_id = icm.instructor_id

GROUP BY
    i.instructor_id,
    i.instructor_name

ORDER BY
    total_revenue DESC;