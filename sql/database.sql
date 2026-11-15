CREATE DATABASE IF NOT EXISTS bshr_portfolio_db;
USE bshr_portfolio_db;

CREATE TABLE info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    job_title VARCHAR(100),
    about TEXT,
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE skills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    skill_name VARCHAR(50),
    skill_level INT
);

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    description TEXT
);

CREATE TABLE messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    message TEXT
);

INSERT INTO info (full_name, job_title, about, email, city) VALUES
('Bshr', 'Software Engineering Student',
 'I am a Software Engineering student at the University of Hail. I am most interested in computer networking. Outside of studying, I enjoy going to the gym.',
 'bshralhmshy@gmail.com', 'Hail');

INSERT INTO skills (skill_name, skill_level) VALUES
('Networking', 90),
('Project Management', 90),
('HTML', 90),
('CSS', 85),
('MySQL', 75),
('JavaScript', 70);

INSERT INTO projects (title, description) VALUES
('PrintHub Queue Simulation', 'A Python simulation of a print shop queue that compares one printer with more printers.'),
('CI/CD Workflow Model', 'A BPMN diagram that shows how code is built, tested and deployed.'),
('Bug Reporting Policy', 'A security policy that explains how software bugs are reported and fixed safely.');
