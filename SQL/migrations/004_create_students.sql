CREATE TABLE IF NOT EXISTS students (
    student_id VARCHAR(50) PRIMARY KEY,
    team_id VARCHAR(50) NOT NULL,
    name VARCHAR(150) NOT NULL,
    roll_number VARCHAR(50) NOT NULL,
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT uq_student_roll_per_team UNIQUE (team_id, roll_number),
    CONSTRAINT fk_students_team
        FOREIGN KEY (team_id) REFERENCES teams(team_id)
        ON DELETE CASCADE
);
