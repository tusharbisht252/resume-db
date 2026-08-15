CREATE DATABASE resume_db;

USE resume_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO users (name, email)
VALUES
('Tushar', 'tushar@example.com'),
('Himani', 'himani@example.com'),
('Meera', 'meera@example.com');

SELECT * FROM users;

SELECT * FROM users
WHERE email = 'tushar@example.com';

CREATE TABLE resumes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    summary TEXT,
    userId INT,
    FOREIGN KEY (userId) REFERENCES users(id)
);

INSERT INTO resumes (title, summary, userId)
VALUES
('Full Stack Intern', 'Node, Express, MySQL', 1),
('QA Intern', 'Manual + API Testing', 2);

SELECT * FROM resumes;

SELECT resumes.title, users.name
FROM resumes
JOIN users
ON resumes.userId = users.id;
