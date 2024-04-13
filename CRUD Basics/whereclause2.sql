-- The WHERE clause is used to filter records.
-- It is used to extract only those records that fulfill a specified condition.

SELECT * FROM cats WHERE age=4;
SELECT name, age FROM cats WHERE age=4;
SELECT name FROM cats WHERE age=4; -- not compulsion to include age when we condition on age

-- The execution order is
-- First the WHERE clause gets executed and then the SELECT clause

-- by default the string matching is case insensative but there are ways to enforce the casing.
SELECT * FROM cats WHERE name='Egg';
SELECT * FROM cats WHERE name='egg'; -- still gives same result