-- Relationship test 1: every group must reference an existing teacher.
SELECT g.group_id
FROM groups g
LEFT JOIN teachers t ON t.teacher_id = g.teacher_id
WHERE t.teacher_id IS NULL;

-- Relationship test 2: every team must reference an existing group.
SELECT te.team_id
FROM teams te
LEFT JOIN groups g ON g.group_id = te.group_id
WHERE g.group_id IS NULL;

-- Relationship test 3: every student must reference an existing team.
SELECT s.student_id
FROM students s
LEFT JOIN teams te ON te.team_id = s.team_id
WHERE te.team_id IS NULL;
