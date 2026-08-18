-- List lab activities for a team
SELECT activity_id, lab_number, title, description, activity_date, max_marks
FROM lab_activities
WHERE team_id = :team_id
ORDER BY lab_number;

-- Get a student's lab activities with marks
SELECT la.lab_number, la.title, e.marks, e.feedback
FROM lab_activities la
LEFT JOIN evaluations e
    ON e.activity_id = la.activity_id
   AND e.student_id = :student_id
WHERE la.team_id = :team_id
ORDER BY la.lab_number;
