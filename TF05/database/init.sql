CREATE DATABASE IF NOT EXISTS app;
USE app;

CREATE TABLE IF NOT EXISTS metrics (
    id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(255) NOT NULL,
    uptime FLOAT NOT NULL,
    response_time FLOAT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS alerts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    status VARCHAR(50) DEFAULT 'critical',
    resolved_at TIMESTAMP NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO metrics (service_name, uptime, response_time) VALUES 
('frontend', 99.9, 120),
('backend', 99.8, 85);

INSERT INTO alerts (service_name, message, status) VALUES 
('backend', 'Alta latência detectada no Backend', 'warning'),
('database', 'Database falhou no healthcheck (Resolvido)', 'resolved');
