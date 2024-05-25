-- select all books which have space in the title
SELECT title FROM books WHERE title LIKE '% %';

-- select all books which does not have space in the title
SELECT title FROM books WHERE title NOT LIKE '% %';

-- select all books which have author name starting with 'Da'
SELECT title, author_fname FROM books WHERE author_fname LIKE 'Da%';

-- select all books which does not have author name starting with 'Da'
SELECT title, author_fname FROM books WHERE author_fname NOT LIKE 'Da%';