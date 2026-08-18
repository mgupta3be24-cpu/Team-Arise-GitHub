-- Attendance for one activity
SELECT s.student_id, s.name, s.roll_number,
       COALESCE(a.status, 'Not Marked') AS attendance_status
FROM students s
LEFT JOIN attendance a
    ON a.student_id = s.student_id
   AND a.activity_id = :activity_id
WHERE s.team_id = :team_id
ORDER BY s.roll_number;

-- Attendance percentage per student
SELECT s.student_id, s.name, s.roll_number,
       ROUND(
           100.0 * SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END)
           / NULLIF(COUNT(a.activity_id), 0), 2
       ) AS attendance_percentage
FROM students s
LEFT JOIN attendance a ON a.student_id = s.student_id
WHERE s.team_id = :team_id
GROUP BY s.student_id, s.name, s.roll_number
ORDER BY s.roll_number;
