-- write this schema STUDENTS(id, first_name) and PAPERS(title, grade, student_id), student_id -> id
CREATE TABLE students(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(20)
);

CREATE TABLE papers(
	title VARCHAR(100),
    grade INT,
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES students(id)
);

-- inserting data into them
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

-- print first_name, title, grade
SELECT first_name, title, grade FROM students
JOIN papers ON students.id = papers.student_id
ORDER BY grade DESC;

-- do left join and print the same as above
SELECT first_name, title, grade FROM students
lEFT JOIN papers ON students.id = papers.student_id;

-- in left join instead of null print 'missing' in title and '0' in grade
SELECT first_name, IFNULL(title,'MISSING'), IFNULL(grade, 0) FROM students
lEFT JOIN papers ON students.id = papers.student_id;

-- print first_name and their average grades
SELECT first_name, IFNULL(AVG(grade),0) AS average FROM students
LEFT JOIN papers ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;

-- print first_name, average, passing_status, if avg > 75 then passing else failing
SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS 'average',
    CASE
        WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS 'passing_status'
FROM
    students
        LEFT JOIN
    papers ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;