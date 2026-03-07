CREATE TABLE OT_CONFIG (
    ot_settings_type VARCHAR(100) PRIMARY KEY,
    ot_settings_method VARCHAR(100) NOT NULL,
    ot_settings_fixed_amount DECIMAL(10, 2),
    multiplier DECIMAL(5, 2) NOT NULL);
