CREATE TABLE student (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO student (name, email) VALUES
('John', 'john@school.com'),
('Adam', 'adam@school.com'),
('Lucy', 'lucy@school.com');