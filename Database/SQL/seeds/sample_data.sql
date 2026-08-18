-- Sample data for development/testing only.
-- IDs are stable so related rows are easy to follow.

INSERT INTO teachers (teacher_id, name, email) VALUES
('T001', 'Dr. Ananya Sharma', 'ananya.sharma@example.edu')
ON CONFLICT (teacher_id) DO NOTHING;

INSERT INTO groups (group_id, teacher_id, name) VALUES
('G001', 'T001', 'Database Lab Group A')
ON CONFLICT (group_id) DO NOTHING;

INSERT INTO teams (team_id, group_id, name) VALUES
('TEAM001', 'G001', 'Team Alpha'),
('TEAM002', 'G001', 'Team Beta')
ON CONFLICT (team_id) DO NOTHING;

INSERT INTO students (student_id, team_id, name, roll_number, email) VALUES
('S001', 'TEAM001', 'Aarav Kumar', '01', 'aarav@example.edu'),
('S002', 'TEAM001', 'Diya Verma', '02', 'diya@example.edu'),
('S003', 'TEAM002', 'Kabir Singh', '03', 'kabir@example.edu'),
('S004', 'TEAM002', 'Meera Patel', '04', 'meera@example.edu')
ON CONFLICT (student_id) DO NOTHING;

INSERT INTO lab_activities
(activity_id, team_id, lab_number, title, description, activity_date, max_marks)
VALUES
('LAB001', 'TEAM001', 1, 'Database Basics',
 'Introduction to relational databases and SQL queries.',
 CURRENT_DATE, 100),
('LAB002', 'TEAM001', 2, 'Joins and Aggregation',
 'Practice joins, grouping and aggregate functions.',
 CURRENT_DATE, 100),
('LAB003', 'TEAM002', 1, 'Database Basics',
 'Introduction to relational databases and SQL queries.',
 CURRENT_DATE, 100)
ON CONFLICT (activity_id) DO NOTHING;

INSERT INTO attendance (activity_id, student_id, status) VALUES
('LAB001', 'S001', 'Present'),
('LAB001', 'S002', 'Present')
ON CONFLICT (activity_id, student_id) DO NOTHING;

INSERT INTO evaluations (activity_id, student_id, marks, feedback) VALUES
('LAB001', 'S001', 92, 'Excellent work'),
('LAB001', 'S002', 86, 'Good understanding')
ON CONFLICT (activity_id, student_id) DO NOTHING;

INSERT INTO team_comments (activity_id, comment) VALUES
('LAB001', 'Team completed the laboratory activity successfully.')
ON CONFLICT (activity_id) DO NOTHING;
