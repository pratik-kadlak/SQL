-- Note that replace also alter the string temporary

-- Replace "T" with "M" - Note that it is case sensitive
SELECT REPLACE('SQL Tutorial', 'T', 'M');

SELECT REPLACE('HELLO WORLD', 'HELL', 'HEAVEN');

-- can replace on more than one occurence
SELECT REPLACE('breakfast lunch dinner', ' ', ' and ');

-- replace all spaces in title of the book to '-'
SELECT REPLACE(title, ' ', '-') AS title FROM books;