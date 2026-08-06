-- 1. Total Registered Students

SELECT 
	COUNT(s.student_id) total_students
FROM
	dbo.students s;

-- 2. Student Registration Trend

SELECT
	Year(s.registration_date) registration_year,
	MONTH(s.registration_date) registration_month,
	DATENAME(MONTH,s.registration_date) month_name,
	COUNT(s.student_id) total_students
FROM
	dbo.students s
GROUP BY
	Year(s.registration_date),
	MONTH(s.registration_date),
	DATENAME(MONTH,s.registration_date)
ORDER BY
	registration_year,
	registration_month;

-- 3. Student Distribution by Gender

SELECT
	s.gender,
	COUNT(s.student_id) total_students,
	ROUND(
		COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(),2
	) percentage
FROM
	dbo.students s 
GROUP BY 
	s.gender 
ORDER BY 
	total_students desc;

-- 4. Top 5 Cities by Student Count

SELECT
	TOP 5
	s.city,
	COUNT(s.student_id) total_students
FROM
	dbo.students s 
GROUP BY 
	s.city 
ORDER BY 
	total_students desc;

-- 5. How many courses has each student enrolled in?

SELECT
	s.student_id,
	CONCAT(s.first_name,' ',s.last_name) student_name,
	COUNT(e.enrollment_id) total_enrollments
FROM
	dbo.students s 
LEFT JOIN 
	dbo.enrollments e 
ON
	s.student_id = e.student_id 
GROUP BY
	s.student_id,
	CONCAT(s.first_name,' ',s.last_name)
ORDER BY
	total_enrollments DESC;

-- 6. Top 10 Most Engaged Students

WITH  StudentEngagement AS(
	SELECT 
		s.student_id,
		CONCAT(s.first_name,' ',s.last_name) student_name,
		COUNT(e.enrollment_id) total_enrollments,
		SUM(
			CASE WHEN e.completion_status = 'Completed' THEN 1 ELSE 0 END
		) completed_courses,
		ROUND(AVG(e.progress_percent ),2) average_progress
	FROM
		dbo.students s 
	LEFT JOIN
		dbo.enrollments e 
	ON
		s.student_id = e.student_id 
	GROUP BY
		s.student_id,
		CONCAT(s.first_name,' ',s.last_name)
)

SELECT 
	TOP 10
		student_id,
		student_name,
		total_enrollments,
		completed_courses,
		average_progress
FROM
	StudentEngagement
ORDER BY
	completed_courses DESC ,
	average_progress DESC,
	total_enrollments DESC;

-- 7. Students learning across multiple categories

SELECT 
	s.student_id ,
	CONCAT(s.first_name,' ',s.last_name) student_name,
	COUNT(DISTINCT c.category) categories_enrolled
FROM
	dbo.students s 
JOIN
	dbo.enrollments e 
ON
	s.student_id = e.student_id 
JOIN
	dbo.courses c 
ON
	e.course_id = c.course_id 
GROUP BY
	s.student_id ,
	CONCAT(s.first_name,' ',s.last_name)
HAVING  
	COUNT(DISTINCT c.category) > 1
ORDER BY
	categories_enrolled DESC;

-- 8. New vs Returning Students

WITH StudentEnrollmentHistory AS
(
SELECT

    student_id,

    enrollment_date,

    ROW_NUMBER() OVER
    (
        PARTITION BY student_id
        ORDER BY enrollment_date
    ) AS enrollment_sequence

FROM enrollments
)

SELECT
	CASE
		WHEN enrollment_sequence=1 THEN 'New Student' ELSE 'Returning Student'

	END AS student_type,

	COUNT(*) AS total_enrollments

FROM 
	StudentEnrollmentHistory
GROUP BY
	CASE
		WHEN enrollment_sequence=1 THEN 'New Student' ELSE 'Returning Student'
	END;