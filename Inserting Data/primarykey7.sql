DESC cats; -- currently it has nothing in keys column
 
-- now currently one can put multiple entries with the same name and age in out cats table
INSERT INTO cats(name, age)
VALUES ('Bella', 3),
	   ('Bella', 3),
       ('Bella', 3);
       
SELECT * FROM cats; -- now there is no way to distinguish between the 3 rows

-- to tackle this problem we can use `PRIMARY KEY` keyword for a new col called cat_id
CREATE TABLE unique_cats(
	cat_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20) DEFAULT 'John Doe',
    age INT DEFAULT 1);
    
-- alternate syntax (note that NOT NULL is not requrired for the cols that are PRIMARY KEY
-- as PRIMARY KEY are by definition NOT NULL
-- CREATE TABLE unique_cats(
-- 	cat_id INT ,
--     name VARCHAR(20) DEFAULT 'John Doe',
--     age INT DEFAULT 1,
--     PRIMARY KEY(cat_id));
    
DESC unique_cats; -- we get PRI for cat_id

-- now we cant add same cat_id for 2 cats
INSERT INTO unique_cats(cat_id, name, age)
VALUES (1, 'Bella', 3),
	   (2, 'Bella', 3),
       (3, 'Bella', 3);
       
-- INSERT INTO unique_cats(cat_id, name, age) -- this queuy gives error as we try to insert same cat_id
-- VALUES (3, 'Luna', 4);

SELECT * FROM unique_cats;

-- but for cat_id we expect it to go from 1 and then start increasing by 1
-- but for now no one is stopping us to give cat_id as any integer

INSERT INTO unique_cats(cat_id, name, age)
VALUES (999, 'Haley', 3);

SELECT * FROM unique_cats;

DROP TABLE unique_cats;
	