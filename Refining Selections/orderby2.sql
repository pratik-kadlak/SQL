-- The ORDER BY keyword is used to sort the result-set in ascending or descending order.

SELECT author_lname FROM books ORDER BY author_lname;
SELECT author_fname, author_lname FROM books ORDER BY author_fname;

-- Note: ORDER BY sorts in ascending order by default
-- to get the Order in descending order we add the `DESC` keyword at the last
-- for getting ascending order we add `ASC` 
-- IN ASCENDING NULL COMES FIRST AND IN DESCENDING ORDER IT COMES LAST

SELECT title, released_year FROM books ORDER BY released_year DESC;

-- we don't have to have released_year in SELECT
SELECT title, pages FROM books ORDER BY released_year DESC;

-- we order by the second column
SELECT title, author_fname FROM books ORDER BY 2; 

-- we can also sort on multiple cols if tied on first col, second col is compared
SELECT author_lname, author_fname FROM books ORDER BY author_lname, author_fname;
SELECT title, author_fname, author_lname FROM books ORDER BY author_lname, author_fname, released_year;
SELECT title, author_fname, author_lname FROM books ORDER BY author_lname, author_fname, released_year DESC;

-- we can also order by the col which is the result of the current query
SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM books ORDER BY author DESC;