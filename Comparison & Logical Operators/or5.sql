-- select books with long title or more number of pages
SELECT title, pages FROM books
WHERE CHAR_LENGTH(title) > 30 OR pages > 300;

-- select short books or which contains 'stories' in it
SELECT title, pages FROM books WHERE pages < 200 OR title LIKE '%stories%';