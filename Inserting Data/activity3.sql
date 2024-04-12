-- 1. Create people table (fname, lname, age)
-- 2. Insert Tina Belcher 13 to people table
-- 3. Insert Bob Belcher 42 to people table
-- 4. Insert multiple entries (Linda Belcher 45),(Philip Frond 38), (Calvin Fischoeder 70)
-- 5. Check out the entries using SELECT
-- 6. Drop people table

CREATE TABLE people(
	first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT);
    
INSERT INTO people (first_name, last_name, age)
VALUES ('Tina', 'Belcher', 13);

INSERT INTO people (first_name, last_name, age)
VALUES ('Bob', 'Belcher', 42);

INSERT INTO people (first_name, last_name, age)
VALUES ('Linda', 'Belcher', 45),
	   ('Philip', 'Frond', 38),
       ('Calvin', 'Fischoeder', 70);

SELECT * FROM people;   

Drop TABLE people;