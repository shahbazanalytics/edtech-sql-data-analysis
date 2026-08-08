# Metric Definitions

## Revenue

### Definition

Estimated course revenue is calculated as:

Course Revenue = Course Price × Number of Enrollments

### Business Logic

Each enrollment is treated as one purchase at the listed
course price.

### SQL Logic

Course Revenue = price × COUNT(enrollment_id)

Platform Revenue = SUM(Course Revenue)

### Important Assumption

The dataset does not contain transaction-level payment amounts,
discounts, refunds, taxes, or payment processing fees.

Therefore, revenue represents estimated course revenue based
on the listed course price and enrollment volume rather than
accounting revenue.

---

## Total Students

### Definition

Number of unique students in the student dimension.

### SQL Logic

COUNT(DISTINCT student_id)

---

## Total Courses

### Definition

Number of courses available in the course catalog.

### SQL Logic

COUNT(DISTINCT course_id)

---

## Average Completion Rate

### Definition

Average completion percentage across enrollment records.

### SQL Logic

AVG(progress_percent)

---

## Total Enrollments

### Definition

Total number of enrollment records.

### SQL Logic

COUNT(enrollment_id)