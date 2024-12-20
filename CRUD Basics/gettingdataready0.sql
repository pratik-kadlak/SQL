CREATE DATABASE crud_basics; -- CREATED NEW DB FOR NEW SECTION
USE crud_basics;

CREATE TABLE cats(
	cat_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT
);

INSERT INTO cats(name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
	   ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

SELECT * FROM cats;