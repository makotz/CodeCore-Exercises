Lab 1
INSERT INTO students (first_name, last_name, Age, email, registration_date, phone_number, created_at, updated_at)
VALUES ('John', 'Smith', 45, 'john@smith.com', '2016-01-01', '778.778.7787', NOW(), NOW())

SELECT * FROM students
ORDER BY id DESC
LIMIT 1

UPDATE students SET age = 70 WHERE id = 1140;

DELETE FROM students WHERE id = 1140;

select * FROM students WHERE id = 1140;
