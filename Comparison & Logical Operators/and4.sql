-- select books written by eggers and published after year 2010
SELECT * FROM books
WHERE author_lname = 'Eggers' AND released_year > 2010;

-- select books which have long title and also have more pages
SELECT title, pages FROM books WHERE CHAR_LENGTH(title) > 30 AND pages > 300;