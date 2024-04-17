-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
-- There are two wildcards often used in conjunction with the LIKE operator:
--  The percent sign % represents zero, one, or multiple characters
--  The underscore sign _ represents one, single character

-- all author names starting with 'Da'
SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE 'Da%';

-- all author names that contains 'Da'
SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%da%'; -- case insesitive

-- all books which have `:` in title 
SELECT * FROM books WHERE title LIKE '%:%';

-- all author's which have 4 letter long fname
SELECT * FROM books WHERE author_fname LIKE '____';

-- BUT WHAT IF we want to match '%' or '_'
-- like select all books which have '%' sign in the title
SELECT title FROM books WHERE title LIKE '%\%%';
SELECT title FROM books WHERE title LIKE '%\_%';
