-- UPPER() / UCASE(): Capitalizes string
-- LOWER() / LCASE() : Gives String in small letters

SELECT UPPER('hello world');
SELECT LOWER('HELLO WORLD');

-- query for 'I LOVE THE NAMESAKE !!!'
SELECT CONCAT('I LOVE ', UPPER(title), ' !!!') FROM books WHERE title='The Namesake';