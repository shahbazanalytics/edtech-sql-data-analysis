-- 1. Total Revenue
-- How much total revenue has the platform generated from all course enrollments?

SELECT 
	SUM(c.price) Total_Revenue
FROM
	dbo.courses c 
JOIN 
	dbo.enrollments e 
ON 
	c.course_id = e.course_id ;

-- 2. Total Paid Enrollments

SELECT
	COUNT(*) Total_Enrollments
FROM
	dbo.enrollments e ;

-- 3. Average Revenue per Enrollment

SELECT 
	CAST(AVG(c.price) AS Decimal(10,2)) avg_revenue_per_enrollment
FROM
	dbo.enrollments e 
JOIN 
	dbo.courses c 
ON 
	e.course_id = c.course_id;

-- 4. Monthly Revenue Trend

WITH CourseMonthlyRevenue AS
(
    SELECT
        YEAR(e.enrollment_date) AS revenue_year,
        MONTH(e.enrollment_date) AS revenue_month,
        DATENAME(MONTH, e.enrollment_date) AS month_name,
        e.course_id,
        c.price,
        COUNT(e.enrollment_id) AS total_enrollments
    FROM 
    	enrollments e
JOIN 
	courses c
ON 
	e.course_id = c.course_id
GROUP BY
    YEAR(e.enrollment_date),
    MONTH(e.enrollment_date),
    DATENAME(MONTH, e.enrollment_date),
    e.course_id,
    c.price
)

SELECT
    revenue_year,
    revenue_month,
    month_name,
    SUM(price * total_enrollments) AS total_revenue
FROM 
	CourseMonthlyRevenue
GROUP BY
    revenue_year,
    revenue_month,
    month_name
ORDER BY
    revenue_year,
    revenue_month;

-- 5.Revenue by Category

WITH CourseCategoryRevenue AS
(
    SELECT
        c.course_id,
        c.category,
        c.price,
        COUNT(e.enrollment_id) AS total_enrollments
    FROM 
    	courses c
    JOIN enrollments e
    ON 
    	c.course_id = e.course_id
    GROUP BY
        c.course_id,
        c.category,
        c.price
)

SELECT
    category,

    SUM(total_enrollments) AS total_enrollments,

    SUM(price * total_enrollments) AS total_revenue

FROM CourseCategoryRevenue

GROUP BY
    category

ORDER BY
    total_revenue DESC;

-- 6.Revenue by Instructor

SELECT
	i.instructor_name Instructor,
	SUM(c.price) total_revenue,
	COUNT(e.enrollment_id) total_enrollments
FROM
	dbo.instructors i 
JOIN 
	dbo.courses c
ON 
	i.instructor_id = c.instructor_id
JOIN 
	dbo.enrollments e 
ON 
	c.course_id = e.course_id 
GROUP BY
	i.instructor_name 
ORDER BY 
	total_revenue DESC;

-- 7.Top 10 Revenue generating Courses

SELECT
	TOP 10
	c.course_name Course,
	c.category Category,
	SUM(c.price) total_revenue,
	COUNT(e.enrollment_id) total_enrollments
FROM 
	dbo.courses c 
JOIN 	
	dbo.enrollments e 
ON
	c.course_id = e.course_id 
GROUP BY 
	c.course_name,
	c.category 
ORDER BY
	total_revenue DESC;

-- 8.Revenue Contribution by Category

SELECT

    c.category,

    SUM(c.price) AS total_revenue,

    ROUND(
        100.0 * SUM(c.price)
        / SUM(SUM(c.price)) OVER (),
        2
    ) AS revenue_percentage

FROM courses c

JOIN enrollments e
ON c.course_id=e.course_id

GROUP BY
    c.category

ORDER BY
    total_revenue DESC;