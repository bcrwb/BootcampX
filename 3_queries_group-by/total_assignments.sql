SELECT cohorts.name as cohort, count(assignment_submissions) as total_submissions
FROM cohorts INNER JOIN assignment_submissions ON cohorts.id  = assignment_submissions.assignment_id
GROUP BY cohorts.name
ORDER BY total_submissions