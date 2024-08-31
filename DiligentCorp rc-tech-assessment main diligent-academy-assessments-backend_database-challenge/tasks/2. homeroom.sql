CREATE TABLE homeroom (
    id INT AUTO_INCREMENT PRIMARY KEY, /*add an index for faster read */
    name VARCHAR(10) UNIQUE NOT NULL
);

INSERT INTO homeroom (name) VALUES
('9A'),
('9B');
