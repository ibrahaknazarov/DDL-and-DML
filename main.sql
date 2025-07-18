  -- DDL
  CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    price DECIMAL(10,2),
    ALTER TABLE books ADD COLUMN published_at  DATE,
    ALTER TABLE books RENAME COLUMN author TO author_name,
    DROP COLUMN published_at
)


--DML

INSERT INTO students (name, age, grade, email) VALUES
('Ali', 19, 85, 'ali@gmail.com'),
('Zarina', 22, 91, 'zarina@yahoo.com'),
('Timur', 17, 78, 'timur@mail.ru');


SELECT * FROM students;
SELECT name FROM students
WHERE age > 20;


UPDATE students
SET age = 25
WHERE name = 'Ali';


DELETE FROM students
WHERE age < 18;