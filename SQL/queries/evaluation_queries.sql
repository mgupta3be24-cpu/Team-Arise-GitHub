-- Evaluation results for one activity
SELECT s.student_id, s.name, s.roll_number,
       e.marks, e.feedback
FROM students s
LEFT JOIN evaluations e
    ON e.student_id = s.student_id
   AND e.activity_id = :activity_id
WHERE s.team_id = :team_id
ORDER BY s.roll_number;

-- Average marks for a team
SELECT s.student_id, s.name, s.roll_number,
       ROUND(AVG(e.marks), 2) AS average_marks
FROM students s
LEFT JOIN evaluations e ON e.student_id = s.student_id
WHERE s.team_id = :team_id
GROUP BY s.student_id, s.name, s.roll_number
ORDER BY average_marks DESC NULLS LAST;
