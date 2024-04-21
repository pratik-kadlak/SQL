-- The MIN() function returns the smallest value of the selected column.
-- The MAX() function returns the largest value of the selected column.

-- without group by

-- find the oldest book
SELECT MIN(released_year) FROM books;

-- find the book with most pages
SELECT MAX(pages) FROM books;

-- MIN() and MAX() also works alphabetically
SELECT MIN(author_lname) FROM books;
SELECT MIN(author_lname), MAX(author_lname) FROM books;
