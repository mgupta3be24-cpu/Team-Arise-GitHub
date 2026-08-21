CREATE TABLE IF NOT EXISTS evaluations (
    activity_id VARCHAR(50) NOT NULL,
    student_id VARCHAR(50) NOT NULL,
    marks DECIMAL(6,2) NOT NULL,
    feedback TEXT,
    evaluated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (activity_id, student_id),
    CONSTRAINT fk_evaluations_activity
        FOREIGN KEY (activity_id) REFERENCES lab_activities(activity_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_evaluations_student
        FOREIGN KEY (student_id) REFERENCES students(student_id)
        ON DELETE CASCADE,
    CONSTRAINT chk_evaluation_marks CHECK (marks >= 0)
);
