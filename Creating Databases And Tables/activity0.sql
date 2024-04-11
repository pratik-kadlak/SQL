-- 1. Create a pastries table it should include 2 cols: name - 50 char max and quantity
-- 2. Inspect your table
-- 3. Delete the table

-- creating table
 CREATE TABLE pastries(
 	name VARCHAR(50),
     quantity INT 
);

-- inspecting the table
SHOW TABLES;
DESC pastries;

-- deleting the table
DROP TABLE pastries;  

SHOW TABLES; -- it is deleted