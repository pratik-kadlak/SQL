-- The AVG() function returns the average value of a numeric column.

-- find avg released year
SELECT AVG(released_year) FROM books;

-- calc avg stock queantity for books released in same year
SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;