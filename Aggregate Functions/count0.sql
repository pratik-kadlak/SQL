-- The COUNT() function returns the number of rows that matches a specified criterion.

USE book_shop;

-- count number of books, COUNT(*) means count all the rows
SELECT COUNT(*) FROM books; -- this also counts NULL

-- selecting columns and counting does not go well in SQL (we can do this by changing the default settings)
-- SELECT title, author_fname, COUNT(*) FROM books;

-- how many author_fnames (ignores NULL) 
SELECT COUNT(author_fname) FROM books;

-- how many distinct author_fnames 
SELECT COUNT(DISTINCT author_fname) FROM books;

-- how many title contains "the"
SELECT COUNT(*) FROM books WHERE title LIKE "%the%";