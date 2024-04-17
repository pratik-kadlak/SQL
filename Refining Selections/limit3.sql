-- selects specified no of rows from the table

-- select 5 oldest books 
SELECT title FROM books ORDER BY released_year LIMIT 5;

-- we can also get values from middle starts from 5 and goes till 10 rows
SELECT title FROM books ORDER BY released_year LIMIT 5,10;