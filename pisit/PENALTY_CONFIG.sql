CREATE TABLE PENALTY_CONFIG (
    penalty_settings_type VARCHAR(100) PRIMARY KEY,
    penalty_settings_method VARCHAR(100) NOT NULL,
    penalty_settings_fixed_amount DECIMAL(10, 2)
);
