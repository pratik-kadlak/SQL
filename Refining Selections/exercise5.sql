-- all books that contains `stories`
SELECT title FROM books WHERE title LIKE '%stories%';

-- find the longes book
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- print a summary containing title and year for the 3 most recent books
SELECT CONCAT(title, ' - ', released_year) AS summary FROM books
ORDER BY released_year DESC LIMIT 3;

-- find all books with an author_lname that contains a space(" ")
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

-- find 3 books with lowest stock quantity
SELECT title, released_year, stock_quantity FROM books 
ORDER BY stock_quantity LIMIT 3;

-- print title and author_lname, sorted first by author_lname and then by the title
SELECT title, author_lname FROM books ORDER BY author_lname, title;

-- make this output where we have to output 'MY FAVOURITE AUTHOR IS {author full name} !' and rename the table 'yell'
-- and sort them by last name 
SELECT CONCAT('MY FAVOURITE AUTHOR IS ', CONCAT(author_fname, ' ', author_lname), '!') AS yell FROM books
ORDER BY author_lname;