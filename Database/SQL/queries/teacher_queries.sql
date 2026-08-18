-- List all teachers
SELECT * FROM teachers ORDER BY name;

-- Find a teacher by email
SELECT *
FROM teachers
WHERE email = :email;

-- Count groups handled by each teacher
SELECT t.teacher_id, t.name, COUNT(g.group_id) AS group_count
FROM teachers t
LEFT JOIN groups g ON g.teacher_id = t.teacher_id
GROUP BY t.teacher_id, t.name
ORDER BY t.name;
