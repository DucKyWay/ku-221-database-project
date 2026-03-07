CREATE TABLE COMPENSATION_SETTINGS (
    settings_id INT PRIMARY KEY,
    compensation_settings_type VARCHAR(100) NOT NULL,
    FOREIGN KEY (settings_id) REFERENCES SETTINGS(settings_id)
);
