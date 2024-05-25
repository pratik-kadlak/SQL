-- select books which have released_year > 2000
SELECT title, released_year FROM books WHERE released_year > 2000;

SELECT 99 > 1; -- it returns 1 because expression is true
SELECT 99 > 100; -- it returns 0 because expression is false
SELECT 1 > NULL; -- it gives NULL as one value is NULLS