-- prints the number of books in the database
SELECT COUNT(*) FROM books;

-- print how many books were released in each year
SELECT 
	released_year,
    COUNT(*)
FROM books GROUP BY released_year;

-- total number of stocks
SELECT SUM(stock_quantity) FROM books;

-- find avg released_year for each author
SELECT 
	CONCAT(author_fname, ' ', author_lname) AS author,
    AVG(released_year) 
FROM books GROUP BY author;

-- find the full name of the author who wrote the longest book
SELECT CONCAT(author_fname, ' ', author_lname)
FROM books
WHERE pages = (SELECT 
				MAX(pages)
			FROM books
            );
            
-- print no of books released in each year and their avg pages in ascending order
SELECT 
	released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books 
GROUP BY released_year
ORDER BY released_year;