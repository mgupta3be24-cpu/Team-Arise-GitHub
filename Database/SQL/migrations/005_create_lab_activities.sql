CREATE TABLE IF NOT EXISTS lab_activities (
    activity_id VARCHAR(50) PRIMARY KEY,
    team_id VARCHAR(50) NOT NULL,
    lab_number INTEGER NOT NULL,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    activity_date DATE,
    max_marks DECIMAL(6,2) DEFAULT 100,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT uq_activity_team_lab UNIQUE (team_id, lab_number),
    CONSTRAINT fk_activities_team
        FOREIGN KEY (team_id) REFERENCES teams(team_id)
        ON DELETE CASCADE
);
