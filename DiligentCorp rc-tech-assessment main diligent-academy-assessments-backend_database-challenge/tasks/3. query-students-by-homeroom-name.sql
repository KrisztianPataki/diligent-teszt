ALTER TABLE student
ADD COLUMN homeroom_id INT,
ADD FOREIGN KEY (homeroom_id) REFERENCES homeroom(id);

UPDATE student SET homeroom_id = (SELECT id FROM homeroom WHERE name = '9A') WHERE name IN ('John', 'Adam');
UPDATE student SET homeroom_id = (SELECT id FROM homeroom WHERE name = '9B') WHERE name = 'Lucy';

/* i would querry the student by the homeroom name with this command */

SELECT s.name FROM student s JOIN homeroom h ON s.homeroom_id = h.id WHERE h.name = '9A';

