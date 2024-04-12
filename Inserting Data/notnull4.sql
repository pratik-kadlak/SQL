DESC cats;

-- 1. What is this Null Column
-- 2. Why is there YES in the NULL col for each of the col of the table

-- NULL column tells us whether NULL value is allowed in the col or not
-- NULL : values in unknown
-- Currently it is Yes so null values can be inserted into our cats table

INSERT INTO cats(name) VALUES ('Lizzie'); -- inserts age as NULL
INSERT INTO cats(age) VALUES (11); -- inserts name as NULL
INSERT INTO cats() VALUES(); -- inserts both entries as NULL

SELECT * FROM cats; 

-- If we dont want NULL values in the table we can use `NOT NULL` keyword
-- For this we can alter the same table but Alter comes later in the course
-- So let's make a new table

CREATE TABLE cats2 (
	name VARCHAR(50) NOT NULL,
    age INT NOT NULL);
    
-- Now any of these statements will not work

INSERT INTO cats2(name) VALUES ('Lizzie'); -- inserts age as NULL
INSERT INTO cats2(age) VALUES (11); -- inserts name as NULL
INSERT INTO cats2() VALUES(); -- inserts both entries as NULL
    
DESC cats2; -- also now cats2 have NO in NULL values col as now NULL values is not allowed
