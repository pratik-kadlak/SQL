-- The GROUP BY statement groups rows that have the same values into summary rows, 
-- like "find the number of customers in each country".

-- The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) 
-- to group the result-set by one or more columns


-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- ORDER BY column_name(s);


-- group rows based on author_lname -> we get distinct author lnames
SELECT author_lname FROM books GROUP BY author_lname;

-- group all the rows by author_fname and count the number of books written by each author_lname
SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- we can also use ORDER BY on the result 
SELECT author_lname, COUNT(*) AS books_written FROM books 
GROUP BY author_lname ORDER BY books_written DESC;

-- count how many books were released in a year
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;