SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher
