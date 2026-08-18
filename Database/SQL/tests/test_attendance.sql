-- Check for invalid attendance values.
SELECT *
FROM attendance
WHERE status NOT IN ('Present', 'Absent', 'Late');

-- Check for attendance records whose student belongs to a different team
-- than the activity's team.
SELECT a.activity_id, a.student_id
FROM attendance a
JOIN lab_activities la ON la.activity_id = a.activity_id
JOIN students s ON s.student_id = a.student_id
WHERE la.team_id <> s.team_id;
