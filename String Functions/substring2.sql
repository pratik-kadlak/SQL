-- SUBSTRING() also have an synonym called SUBSTR();

-- Extract 3 characters from a string, starting in position 1:
SELECT SUBSTRING('SQL Tutorial', 1, 3) AS ExtractString;
-- it means start from 1 pos and extract 3 chars;

SELECT SUBSTRING('HELLO WORLD', 1,4); -- prints HELL
SELECT SUBSTRING('HELLO WORLD', 2, 4); -- prints ELLO
SELECT SUBSTRING('HELLO WORLD', 10, 5); -- if not enough charactes it will stop at the end

SELECT SUBSTRING('HELLO WORLD', 7); -- starts from 6th pos and goes till end

SELECT SUBSTRING('HELLO WORLD', -3); -- selects last 3 pos 

-- extract second last character only
SELECT SUBSTRING('HELLO WORLD', -2, 1);

-- if we want to just select first 15 chars from title of the book
SELECT SUBSTRING(title, 1, 15) FROM books;

-- select first letter of author_lname and author_lname 
SELECT SUBSTRING(author_lname, 1, 1), author_lname FROM books;
