-- select all books written before 1980 (non inclusive)
SELECT * FROM books WHERE released_year < 1980;

-- select all books written by 'Eggers' or 'Chabon'
SELECT * FROM books WHERE author_lname IN ('Eggers', 'Chabon');

-- all books by Lahiri published after 2000
SELECT * FROM books WHERE author_lname='Lahiri' AND released_year > 2000;

-- select all books with page count btn 100 and 200
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;

-- where author_lname starts with 'C' or 'S'
SELECT * FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

-- if title contains 'stories' then 'short stories
-- for books 'Just Kids' and ' Heartbreaking Work' then 'memoir'
-- for everythin else 'novel'
SELECT title, author_lname,
	CASE
		WHEN title LIKE '%stories%' THEN 'short stories'
        WHEN title IN ('Just Kids', 'A Heartbreaking Work of Staggering Genius') THEN 'memoir'
        ELSE 'novel'
	END AS type
FROM books;

-- select author_fname and lname and make new col with the no of books he has written like 2 books of 1 book
SELECT author_fname, author_lname,
	CASE
		WHEN COUNT(*) > 1 THEN CONCAT(COUNT(*), ' books')
        ELSE CONCAT(COUNT(*), ' book')
	END AS COUNT
FROM books
GROUP BY author_fname, author_lname;
		


