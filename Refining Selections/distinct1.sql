-- The SELECT DISTINCT statement is used to return only distinct (different) values.

SELECT DISTINCT author_lname FROM books;

-- but what about the author with same lname but diff fname 

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;
SELECT DISTINCT author_fname, author_lname FROM books;