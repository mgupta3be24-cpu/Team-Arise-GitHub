-- List groups for a teacher
SELECT g.group_id, g.name
FROM groups g
WHERE g.teacher_id = :teacher_id
ORDER BY g.name;

-- Show groups with teacher information
SELECT g.group_id, g.name AS group_name,
       t.teacher_id, t.name AS teacher_name
FROM groups g
JOIN teachers t ON t.teacher_id = g.teacher_id
ORDER BY t.name, g.name;
