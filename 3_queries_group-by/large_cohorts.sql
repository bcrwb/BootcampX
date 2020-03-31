SELECT cohorts.name as cohort_name, count(cohorts) as student_count
FROM cohorts INNER JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohort_name
HAVING count(*) >=18
ORDER BY student_count