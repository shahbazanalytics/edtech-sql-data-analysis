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

-- 7.Top 10 Revenue generating Courses

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


-- 8.Revenue Contribution by Category

WITH CourseRevenue AS
(
    SELECT
        c.course_id,
        c.category,
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
        c.category,
        c.price
),

CategoryRevenue AS
(
    SELECT
        category,

        SUM(total_enrollments) AS total_enrollments,

        SUM(course_revenue) AS total_revenue

    FROM 
    	CourseRevenue

    GROUP BY
        category
)

SELECT
    category,
    total_enrollments,
    total_revenue,

    ROUND(
        100.0 * total_revenue
        / NULLIF(SUM(total_revenue) OVER (), 0),
        2
    ) AS revenue_contribution_pct

FROM 
	CategoryRevenue

ORDER BY
    total_revenue DESC;