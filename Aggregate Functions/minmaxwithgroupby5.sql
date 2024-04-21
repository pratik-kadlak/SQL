-- find the year each author published their first book
SELECT
	CONCAT(author_fname, ' ', author_lname) AS author,
	MIN(released_year)
FROM books
GROUP BY author;

-- find the first and the latest year released
SELECT
	CONCAT(author_fname, ' ', author_lname) AS author,
	MIN(released_year) AS oldest,
    MAX(released_year) AS latest
FROM books
GROUP BY author;