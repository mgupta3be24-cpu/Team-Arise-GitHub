CREATE TABLE IF NOT EXISTS team_comments (
    activity_id VARCHAR(50) PRIMARY KEY,
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_team_comments_activity
        FOREIGN KEY (activity_id) REFERENCES lab_activities(activity_id)
        ON DELETE CASCADE
);
