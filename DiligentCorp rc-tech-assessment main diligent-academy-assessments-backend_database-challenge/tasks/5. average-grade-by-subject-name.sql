/* add the grades */

INSERT INTO grade (student_id, subject_id, grade) VALUES
((SELECT id FROM student WHERE name = 'John'), (SELECT id FROM subject WHERE name = 'Algebra'), 3),
((SELECT id FROM student WHERE name = 'John'), (SELECT id FROM subject WHERE name = 'Biology'), 2),
((SELECT id FROM student WHERE name = 'John'), (SELECT id FROM subject WHERE name = 'World History'), 5),
((SELECT id FROM student WHERE name = 'Adam'), (SELECT id FROM subject WHERE name = 'Algebra'), 4),
((SELECT id FROM student WHERE name = 'Adam'), (SELECT id FROM subject WHERE name = 'Biology'), 3),
((SELECT id FROM student WHERE name = 'Adam'), (SELECT id FROM subject WHERE name = 'World History'), 2),
((SELECT id FROM student WHERE name = 'Lucy'), (SELECT id FROM subject WHERE name = 'Algebra'), 5),
((SELECT id FROM student WHERE name = 'Lucy'), (SELECT id FROM subject WHERE name = 'Biology'), 4),
((SELECT id FROM student WHERE name = 'Lucy'), (SELECT id FROM subject WHERE name = 'World History'), 3);

/* calculate average */
SELECT s.name AS student_name, sub.name AS subject_name, g.grade
FROM grade g
JOIN student s ON g.student_id = s.id
JOIN subject sub ON g.subject_id = sub.id
WHERE sub.name = 'Algebra';

SELECT AVG(g.grade) AS average_grade
FROM grade g
JOIN subject sub ON g.subject_id = sub.id
WHERE sub.name = 'Algebra';