-- in previous script we printed min and max of cols but how to select the title of the book which it belongs to 
-- one way is to use order by and Limit

SELECT * FROM books ORDER BY pages DESC LIMIT 1;

-- and the other is Subquery

-- Subquery
-- A subquery is a query that is nested inside another query. 
-- SQL subqueries are also called nested queries or inner queries

-- find the book with the maximum pages
SELECT * FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- find the books which have lowest stock_quantity -> if more that one rows matched it shows all the rows
SELECT * FROM books WHERE stock_quantity = ( SELECT MIN(stock_quantity) FROM books);