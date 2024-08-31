CREATE TABLE subject (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO subject (name) VALUES
('Algebra'),
('Biology'),
('World History');

/* i would store the grades in an other table that links the ID of the students and the subject */

CREATE TABLE grade (
    student_id INT,
    subject_id INT,
    grade INT,
    PRIMARY KEY (student_id, subject_id),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (subject_id) REFERENCES subject(id)
);
