-- Marks must not be negative.
SELECT *
FROM evaluations
WHERE marks < 0;

-- Check evaluations where marks exceed the activity maximum.
SELECT e.activity_id, e.student_id, e.marks, la.max_marks
FROM evaluations e
JOIN lab_activities la ON la.activity_id = e.activity_id
WHERE e.marks > la.max_marks;

-- Check evaluations where student and activity belong to different teams.
SELECT e.activity_id, e.student_id
FROM evaluations e
JOIN lab_activities la ON la.activity_id = e.activity_id
JOIN students s ON s.student_id = e.student_id
WHERE la.team_id <> s.team_id;
