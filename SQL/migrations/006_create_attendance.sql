CREATE TABLE IF NOT EXISTS attendance (
    activity_id VARCHAR(50) NOT NULL,
    student_id VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL,
    marked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (activity_id, student_id),
    CONSTRAINT fk_attendance_activity
        FOREIGN KEY (activity_id) REFERENCES lab_activities(activity_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_attendance_student
        FOREIGN KEY (student_id) REFERENCES students(student_id)
        ON DELETE CASCADE,
    CONSTRAINT chk_attendance_status
        CHECK (status IN ('Present', 'Absent', 'Late'))
);
