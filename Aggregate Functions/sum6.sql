-- The SUM() function returns the total sum of a numeric column.

SELECT SUM(pages) FROM books;

-- get total number of pages written by each author
SELECT 
	CONCAT(author_fname, ' ', author_lname) AS author,
    SUM(pages)
FROM books GROUP BY author;

-- if we sum non numberic col then we get 0
SELECT SUM(author_fname) FROM books;

-- but since we have 10% happier in the title it will give output as 10 
SELECT SUM(title) FROM books;