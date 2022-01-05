SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort, 
COUNT(assistance_requests) AS total_assistances
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
GROUP BY teacher, cohort
HAVING cohorts.name = 'JUL02'
ORDER BY teacher;