-- List students in a team
SELECT student_id, name, roll_number, email
FROM students
WHERE team_id = :team_id
ORDER BY roll_number;

-- Search students by name
SELECT *
FROM students
WHERE LOWER(name) LIKE LOWER('%' || :name || '%')
ORDER BY name;

-- Count students in every team
SELECT te.team_id, te.name AS team_name,
       COUNT(s.student_id) AS student_count
FROM teams te
LEFT JOIN students s ON s.team_id = te.team_id
GROUP BY te.team_id, te.name
ORDER BY te.name;
