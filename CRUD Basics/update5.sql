-- The UPDATE statement is used to modify the existing records in a table.

-- UPDATE Syntax : 
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

USE pet_shop;
SET SQL_SAFE_UPDATES = 0; -- this does not allow us to update without a where clause so disable that option 

UPDATE cats SET age=5; -- updates age=5 for every cat

SELECT * FROM cats; 

-- update muliple cols at same time
UPDATE cats SET name='Linda',  age=3;
SELECT * FROM cats;

-- update with WHERE clause
UPDATE cats SET age=5 WHERE age=3;
SELECT * FROM cats;