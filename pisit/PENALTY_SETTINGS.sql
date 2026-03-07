CREATE TABLE PENALTY_SETTINGS (
    settings_id INT PRIMARY KEY,
    penalty_settings_type VARCHAR(100),
    penalty_settings_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (settings_id) REFERENCES SETTINGS(settings_id),
    FOREIGN KEY (penalty_settings_type) REFERENCES PENALTY_CONFIG(penalty_settings_type)
);
