CREATE TABLE OT_SETTINGS (
    settings_id INT PRIMARY KEY,
    ot_settings_type VARCHAR(100),
    ot_settings_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (settings_id) REFERENCES SETTINGS(settings_id),
    FOREIGN KEY (ot_settings_type) REFERENCES OT_CONFIG(ot_settings_type)
);
