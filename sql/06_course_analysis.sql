-- 1. Course Portfolio Overview
-- How is our course catalog distributed across categories and difficulty levels?

SELECT 
	c.category,
	c.course_level,
	COUNT(*) total_courses
FROM
	dbo.courses c 
GROUP BY
	c.category,
	c.course_level 
ORDER BY
	total_courses DESC ;

-- 2. Top 10 Revenue-Generating Course

SELECT TOP 10
    c.course_id,
    c.course_name,
    c.category,
    c.price,
    COUNT(e.enrollment_id) AS total_enrollments,
    c.price * COUNT(e.enrollment_id) AS total_revenue
FROM 
	courses c
JOIN 
	enrollments e
ON 
	c.course_id = e.course_id
GROUP BY
    c.course_id,
    c.course_name,
    c.category,
    c.price
ORDER BY
    total_revenue DESC;

-- 3. Most Popular Courses
-- Which courses attract the highest number of students?

SELECT 
	c.course_name,
	c.category,
	COUNT(e.enrollment_id) total_enrollments
FROM
	dbo.courses c 
LEFT JOIN 
	dbo.enrollments e 
ON
	c.course_id = e.course_id 
GROUP BY
	c.course_name,
	c.category 
ORDER BY
	total_enrollments DESC;

-- 4. Highest Completion Rate Course
-- Which courses achieve the highest student completion rate?

SELECT 
	c.course_name,
	COUNT(e.enrollment_id) total_enrollments,
	SUM(
		CASE
			WHEN e.completion_status = 'Completed' THEN 1 ELSE 0
		END
	) completed_emrollments,
	ROUND(
		100 * SUM(
		CASE
			WHEN e.completion_status = 'Completed' THEN 1 ELSE 0
		END
	) / COUNT(e.enrollment_id),2
	) completion_rate
FROM
	dbo.courses c 
LEFT JOIN
	dbo.enrollments e 
ON
	c.course_id = e.course_id 
GROUP BY 
	c.course_name 
HAVING 
	COUNT(e.enrollment_id) > 0
ORDER BY
	completion_rate DESC,
	total_enrollments DESC;

-- 5.Underperforming Courses
-- Which courses require attention due to low demand and poor completion performance?

WITH CoursePerformance AS
(
    SELECT

        c.course_name,

        c.category,

        COUNT(e.enrollment_id) AS total_enrollments,

        ROUND(
            100.0 *
            SUM(CASE
                    WHEN e.completion_status='Completed'
                    THEN 1
                    ELSE 0
                END)
            /
            NULLIF(COUNT(e.enrollment_id), 0) ,
            2
        ) AS completion_rate

    FROM courses c

    LEFT JOIN enrollments e
        ON c.course_id=e.course_id

    GROUP BY

        c.course_name,
        c.category

    HAVING COUNT(e.enrollment_id) > 0
)

SELECT *

FROM CoursePerformance

WHERE
    total_enrollments <
    (
        SELECT AVG(total_enrollments)
        FROM CoursePerformance
    )

AND

    completion_rate <
(
    SELECT
        100.0 * SUM(CASE WHEN completion_status = 'Completed' THEN 1 ELSE 0 END)
        / COUNT(*)
    FROM enrollments
)

ORDER BY
    completion_rate,
    total_enrollments;

-- 6. Average Course Rating
-- Which categories receive the highest learner ratings?

SELECT

    c.category,

    ROUND(AVG(e.rating), 2) AS average_rating,

    COUNT(e.rating) AS total_ratings

FROM courses c

JOIN enrollments e
    ON c.course_id = e.course_id

WHERE
    e.rating IS NOT NULL

GROUP BY
    c.category

ORDER BY
    average_rating DESC;